import 'package:flutter/material.dart';
import 'package:receitas/constants.dart';
import 'package:receitas/models/data.dart';
import 'package:receitas/models/receita.dart';
import 'package:receitas/receitadetalhes.dart';
import 'package:receitas/trocarnome.dart';
import 'package:receitas/widgets/receita_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //Variáveis iniciais dos SharedPreferences
  String nomeUsuario = "(seu nome)";
  int numReceitas = 0;
  List<Receita> listaDeReceitasPreferidas = [];

  // Função para recuperar o nome do SharedPreferences
  Future<String?> _recuperarNome() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('nome');
  }

  // Função para recuperar as receitas do SharedPreferences
  Future<List<Receita>> _recuperarReceitas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? receitasJson = prefs.getStringList('receitas');

    if (receitasJson != null) {
      return receitasJson
          .map((json) => Receita.fromJson(json as Map<String, dynamic>))
          .toList();
    }
    return [];
  }

  @override
  void initState() {
    super.initState();

    //Carregar Nome
    _recuperarNome().then((nome) {
      setState(() {
        if (nome == null) {
          nomeUsuario = "(seu nome)";
        } else {
          nomeUsuario = nome;
        }
      });
    });

    //Carregar receitas favoritas
    _recuperarReceitas().then((receitas) {
      setState(() {
        listaDeReceitasPreferidas = receitas;
      });
    });
  }

  //Tela do Usuário
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Scaffold(
          body: Container(
            decoration: corDeFundoDetalhes,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Olá $nomeUsuario !',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 249, 30, 227),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Aqui estão suas receitas favoritas:',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 185, 47, 172),
                          ),
                        ),
                        listaDeReceitasPreferidas.isEmpty
                            ? const Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Text(
                                    'Você não possui nenhuma receita favorita ainda.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 105, 18, 96),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            : Container(
                                margin:
                                    const EdgeInsets.fromLTRB(30, 40, 30, 10),
                                height: 500,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Você salvou ${listaDeReceitasPreferidas.length} receita(s)!',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 105, 18, 96),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        for (var receitaPreferida
                                            in listaDeReceitasPreferidas)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                receitaPreferida.title,
                                                style: const TextStyle(
                                                    fontSize: 28,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Cookie',
                                                    color: Color.fromARGB(
                                                        255, 176, 92, 209)),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          ReceitaDetalhes(
                                                        receita:
                                                            receitaPreferida,
                                                        listaDeReceitasPreferidas:
                                                            listaDeReceitasPreferidas,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Image.asset(
                                                  receitaPreferida.imageLink,
                                                  height: 130,
                                                  width: 130,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Voltar para as receitas',
                          style: TextStyle(
                            color: Color.fromARGB(255, 249, 30, 227),
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TrocarNome(),
                            ),
                          );
                        },
                        child: const Text(
                          'Trocar nome',
                          style: TextStyle(
                            color: Color.fromARGB(255, 249, 30, 227),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    color: Color.fromARGB(255, 190, 27, 142),
                  ),
                  const Text(
                    '© 2023 TuRtLeDz. All rights reserved.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //Tela do Feed de Receitas (principal)
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'NOSSAS RECEITINHAS',
          style: TextStyle(
            fontFamily: 'Cormorant',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 247, 119, 236),
        leading: IconButton(
          icon: const Icon(Icons.list_sharp),
          onPressed: () {
            _recuperarNome().then((nome) {
              setState(() {
                if (nome == null) {
                  nomeUsuario = "(seu nome)";
                } else {
                  nomeUsuario = nome;
                }
              });
            });
            _showBottomSheet(context);
          },
        ),
      ),
      body: ReceitaList(
        receitas: listaDeReceitas,
        listaDeReceitasPreferidas: listaDeReceitasPreferidas,
      ),
    );
  }
}
