import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ListWidget.dart';
import 'constants.dart';


class ListPart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer<Constants>(
      builder: (context,toDo,child)=>
       ListView.builder(
        itemCount: toDo.toDoLength,
        itemBuilder: (context, index) {
          return ListWidget(
              text: toDo.toDoList[index],
          );
        },
      ),
    );
  }
}
