import 'package:flutter/material.dart';
import 'package:toDoApp/models/global.dart' as myStyle;

class IntrayPage extends StatefulWidget {
  IntrayPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: myStyle.darkGreyColor,
        child: ListView(
          padding: EdgeInsets.only(top: 270.0),
          children: getList(),
        ));
  }

  List<Widget> getList() {
    return [
      Container(
        height: 100.0,
        color: Colors.red,
      ),
      Container(
        height: 100.0,
        color: Colors.green,
      ),
    ];
  }
}
