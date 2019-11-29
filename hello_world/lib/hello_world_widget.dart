import 'package:flutter/material.dart';

class HelloWorldWidget extends StatefulWidget {
  @override
  _HelloWorldWidgetState createState() => _HelloWorldWidgetState();
}

class _HelloWorldWidgetState extends State<HelloWorldWidget> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acidentes na Obra'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('Estamos há ${contador.toString()} dias sem acidentes'),
          ),
          RaisedButton(
              onPressed:(){
                setState(() {
                  if (contador==0) {
                  }
                  else
                  contador--;
                });
              },
              child: Icon(Icons.remove),
          )
          ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            contador++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
