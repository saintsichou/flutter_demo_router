import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static const String routerName = '/detail';

  String msg;
  DetailPage(this.msg);

  @override
  Widget build(BuildContext context) {
  final message = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('详情'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton.icon(
            onPressed: () => back(context),
            icon: Icon(Icons.ac_unit),
            label: Text(msg),
          ),
          Text('${message}')
        ]
    ));
  }

  void back(BuildContext context) {
    Navigator.of(context).pop('whatsapp');
  }
}
