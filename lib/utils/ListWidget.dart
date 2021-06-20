import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget{
  final dynamic text;
  const ListWidget({Key key, @required this.text}) :assert(text!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: ()=>{},
        visualDensity: VisualDensity.adaptivePlatformDensity,
        title: Text(text),
        ),
      );
  }
}