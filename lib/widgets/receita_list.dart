import 'package:flutter/material.dart';
import 'package:receitas/models/receita.dart';
import 'package:receitas/receitadetalhes.dart';

class ReceitaList extends StatelessWidget {
  const ReceitaList({super.key, required this.receitas});

  final List<Receita> receitas;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: receitas.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 100,
          child: ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 4),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            leading: Image.asset(
              receitas[index].imageLink,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text(
              receitas[index].title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 158, 16, 158),
              ),
            ),
            subtitle: Text(
              'Tempo: ${receitas[index].timeToMake} minutos - '
              '${receitas[index].kcal} kcal',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromARGB(255, 90, 26, 79),
              ),
            ),
            trailing: const Icon(Icons.ac_unit),
            iconColor: const Color.fromARGB(255, 197, 103, 174),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReceitaDetalhes(
                    receita: receitas[index],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
