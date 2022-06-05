import "package:flutter/material.dart";
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan[800],
        title: const Text('Novo Cadastro'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyanAccent),
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyanAccent, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Email"),
                  labelStyle: TextStyle(color: Colors.cyanAccent)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(prefixIcon: Icon(Icons.phone, color: Colors.white), enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyanAccent)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyanAccent, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))), label: Text("Telefone"), labelStyle: TextStyle(color: Colors.cyanAccent)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyanAccent)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyanAccent, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Senha"),
                  labelStyle: TextStyle(color: Colors.cyanAccent)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyanAccent)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyanAccent, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Repita a Senha"),
                  labelStyle: TextStyle(color: Colors.cyanAccent)),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.pop(context)
                },
                child: Text('CADASTRAR'),
                style: ElevatedButton.styleFrom(primary: Colors.cyanAccent, padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10), textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18), shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
              )),
        ],
      ),
    );
  }
}
