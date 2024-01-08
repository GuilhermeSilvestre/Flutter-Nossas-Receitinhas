import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:receitas/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddReceita extends StatefulWidget {
  const AddReceita({Key? key}) : super(key: key);

  @override
  State<AddReceita> createState() => _AddReceitaState();
}

class _AddReceitaState extends State<AddReceita> {
  String novoNome = '';

// Função para salvar o nome no SharedPreferences
  void _salvarNome(String nomeUsuario) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('nome', nomeUsuario);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: corDeFundoDetalhes,
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                        const Size(14, 30),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 249, 30, 227),
                      ),
                    ),
                    child: const Icon(Icons.arrow_back, size: 14),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Por favor digite seu nome:',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 185, 47, 172),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Ex: Kleber",
                          border: const OutlineInputBorder(),
                          fillColor: Colors.pink[50],
                          filled: true,
                        ),
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z]+')),
                        ],
                        onChanged: (valor) {
                          setState(() {
                            novoNome = valor;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 26.0),
                    ElevatedButton(
                      onPressed: () {
                        if (novoNome == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor:
                                  Color.fromARGB(255, 226, 106, 26),
                              content: Text('Coloque um nome válido'),
                              duration: Duration(seconds: 3),
                              behavior: SnackBarBehavior.floating,
                            ),
                          );
                          return;
                        } else {
                          setState(() {
                            _salvarNome(novoNome);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor:
                                    Color.fromARGB(255, 126, 211, 129),
                                content: Text('Nome salvo!'),
                                duration: Duration(seconds: 2),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                            Navigator.of(context)
                                .popUntil((route) => route.isFirst);
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor:
                            const Color.fromARGB(255, 249, 30, 227),
                      ),
                      child: const Text("Trocar nome"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/receitas_imagem.png',
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
