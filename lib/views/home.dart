import 'package:flutter/material.dart';
import 'package:form_app1/models/produto.dart';
import 'package:form_app1/views/details.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerQuantidade = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _controllerNome,
            ),
            TextField(
              controller: _controllerQuantidade,
            ),
            TextField(
              controller: _controllerValor,
            ),
            ElevatedButton(
                onPressed: () {
                  final String nome = _controllerNome.text;
                  final int quantidade = int.parse(_controllerQuantidade.text);
                  final double valor = double.parse(_controllerValor.text);

                  final Produto produtoNovo = Produto(nome, quantidade, valor);

                  print(produtoNovo);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DatailsPage(
                                title: 'Detalhes',
                                produto: produtoNovo,
                              )));
                },
                child: Text('Cadastrar'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: '',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
