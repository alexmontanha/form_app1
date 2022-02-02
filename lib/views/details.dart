import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_app1/models/produto.dart';

class DatailsPage extends StatefulWidget {
  DatailsPage({Key? key, required this.title, required this.produto})
      : super(key: key);

  final String title;
  final Produto produto;

  @override
  _DatailsPageState createState() => _DatailsPageState(produto);
}

class _DatailsPageState extends State<DatailsPage> {
  final Produto produto;

  _DatailsPageState(this.produto);

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
            Text('Detalhe'),
            Text(produto.nome),
            Text(produto.valor.toString()),
            Text(produto.quantidade.toString()),
            ElevatedButton(onPressed: () {}, child: Text('Voltar'))
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
