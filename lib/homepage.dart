// import 'dart:convert';
// import 'package:receitas/models/receita.dart';
import 'package:flutter/material.dart';
import 'package:receitas/constants.dart';
import 'package:receitas/models/data.dart';
import 'package:receitas/trocarnome.dart';
import 'package:receitas/widgets/receita_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String nomeUsuario = "(seu nome)";
  int numReceitas = 0;

  // Função para recuperar o nome do SharedPreferences
  Future<String?> _recuperarNome() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('nome');
  }

  // Função para recuperar a quantidade de receitas salvas no SharedPreferences
  Future<int?> _recuperarNumReceitas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('receitas');
  }

  @override
  void initState() {
    super.initState();
    _recuperarNome().then((nome) {
      setState(() {
        if (nome == null) {
          nomeUsuario = "(seu nome)";
        } else {
          nomeUsuario = nome;
        }
      });
    });

    _recuperarNumReceitas().then((receitas) {
      setState(() {
        if (receitas == null) {
          numReceitas = 0;
        } else {
          numReceitas = receitas;
        }
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
              padding: const EdgeInsets.fromLTRB(
                  16, 48, 16, 16), // Define o espaçamento
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
                        numReceitas == 0
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
                            : Column(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  Text(
                                    'Exibir as estrelas voce salvou $numReceitas',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
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
                            ), // Substitua com o construtor apropriado de ReceitaDetalhes
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
      body: ReceitaList(receitas: listaDeReceitas),
    );
  }
}
