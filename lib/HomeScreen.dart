import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/utils/ListPart.dart';
import 'package:untitled/utils/MyRoutes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'utils/constants.dart';
class HomeScreen extends StatelessWidget
{
  var instanceOfList=Constants();
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          floatingActionButton: new FloatingActionButton(
              onPressed: () async{
                await Navigator.pushNamed(context, MyRoutes.InputToDo);
              },
              tooltip: 'Add task',
              child: new Icon(Icons.add),
          ),

          body: Container(
            padding: Vx.m32,
            child: Column(
            children: [
              'ToDoList'.text.bold.xl5.make(),
              Divider(),
              Expanded(
                child: ( instanceOfList.toDoLength!=null && instanceOfList.toDoList.toString().isEmpty)
                  ? ListPart():
                Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          )
          ),
        ),
    );
  }}

