import 'package:flutter/material.dart';
import 'package:receitas/constants.dart';
import 'package:receitas/models/receita.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReceitaDetalhes extends StatefulWidget {
  ReceitaDetalhes(
      {super.key,
      required this.receita,
      required this.listaDeReceitasPreferidas});

  final Receita receita;
  final List<Receita> listaDeReceitasPreferidas;

  late String recipe = receita.recipe;
  late int numCharacters = recipe.length;
  late bool isFav = receita.fav;

  @override
  State<ReceitaDetalhes> createState() => _ReceitaDetalhesState();
}

class _ReceitaDetalhesState extends State<ReceitaDetalhes> {
  //Salvar receitas no celular
  void salvarReceitasFavoritas(List<Receita> receitas) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Converte a lista de receitas para uma lista de strings em formato JSON
    List<String> receitasJson = receitas
        .map((receita) => receita.toJsonString())
        .toList()
        .cast<String>();

    // Salva a lista de strings no SharedPreferences
    await prefs.setStringList('receitas', receitasJson);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: corDeFundoDetalhes,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton(
                          onPressed: () {
                            //Navigator.pop(context);
                            Navigator.of(context)
                                .popUntil((route) => route.isFirst);
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
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              widget.receita.fav = !widget.receita.fav;

                              if (widget.listaDeReceitasPreferidas
                                  .contains(widget.receita)) {
                                widget.listaDeReceitasPreferidas
                                    .remove(widget.receita);
                              } else {
                                widget.listaDeReceitasPreferidas
                                    .add(widget.receita);
                              }

                              // Salva uma lista atualizada de receitas favoritas no SharedPreferences
                              salvarReceitasFavoritas(
                                  widget.listaDeReceitasPreferidas);

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ReceitaDetalhes(
                                    receita: widget.receita,
                                    listaDeReceitasPreferidas:
                                        widget.listaDeReceitasPreferidas,
                                  ),
                                ),
                              );
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: widget.receita.fav
                                    ? const Color.fromARGB(255, 126, 211, 129)
                                    : const Color.fromARGB(255, 226, 106, 26),
                                content: widget.receita.fav
                                    ? const Text(
                                        'Você adicionou essa receita aos favoritos!')
                                    : const Text(
                                        'Receita removida dos favoritos!'),
                                duration: const Duration(seconds: 2),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                          },
                          icon: const Icon(Icons.star),
                          iconSize: 30,
                          color: widget.isFav ? Colors.amber : Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        widget.receita.imageLink,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          widget.receita.title,
                          style: const TextStyle(
                              fontSize: 48, fontFamily: 'Sacramento'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            'Tempo de preparo: ${widget.receita.timeToMake.toString()} minutos',
                            style: textoDetalhes,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Calorias: ${widget.receita.kcal}',
                            style: textoDetalhes,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: widget.numCharacters > 600 ? 400 : null,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: SingleChildScrollView(
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      widget.receita.recipe,
                                      style: textoDetalhes,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
