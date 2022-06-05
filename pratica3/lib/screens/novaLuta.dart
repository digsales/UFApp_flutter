import 'package:flutter/material.dart';
export 'novaLuta.dart';

class NovaLuta extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Luta'),
        backgroundColor: Colors.cyan[800],
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () => {
                    Navigator.pop(context)
                  },
              child: const Text(
                'Adicionar',
                style: TextStyle(
                  color: Colors.cyanAccent,
                ),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text("Coloque uma nova luta", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text("Aprender sobre aquilo que gosta, nunca é demais!", style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.sports_mma,
                    color: Colors.white,
                  ),
                  label: Text("Arte Marcial"),
                  labelStyle: TextStyle(color: Colors.cyanAccent),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.cyanAccent)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyanAccent, width: 1, style: BorderStyle.solid))),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.description_outlined,
                    color: Colors.white,
                  ),
                  label: Text("Características"),
                  labelStyle: TextStyle(color: Colors.cyanAccent),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.cyanAccent)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyanAccent, width: 1, style: BorderStyle.solid))),
            ),
          ),
        ],
      ),
    );
  }
}
