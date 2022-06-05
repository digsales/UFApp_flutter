import "package:flutter/material.dart";
export 'lista.dart';

class Lista extends StatelessWidget {
  Lista({Key? key}) : super(key: key);

  final List lista = List.generate(16, (index) {
    return {
      "id": index,
      "title": "*Arte Marcial*",
      "subtitle": "*Caracteristicas da arte marcial*",
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan[800],
        title: const Text('Artes Marciais'),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app, color: Colors.red),
              onPressed: () => {
                    Navigator.pushReplacementNamed(context, "/")
                  }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.cyanAccent,
        onPressed: () => {
          Navigator.pushNamed(context, "/novaLuta")
        },
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) => index < 15
                ? Card(
                    elevation: 6,
                    margin: EdgeInsets.all(8),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(lista[index + 1]['id'].toString()),
                        backgroundColor: Colors.cyan[800],
                      ),
                      title: Text(lista[index]["title"]),
                      subtitle: Text(lista[index]["subtitle"]),
                      trailing: Icon(
                        Icons.sports_mma_outlined,
                        color: Colors.cyan[800],
                      ),
                    ),
                  )
                : Card(
                    elevation: 6,
                    margin: EdgeInsets.all(16),
                    child: ListTile(
                      title: Text('Chegou ao fim'),
                      subtitle: Text('Adicione mais artes marciais!'),
                    ),
                  )),
      ),
    );
  }
}
