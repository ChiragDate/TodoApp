import 'package:flutter/cupertino.dart';

class Constants extends ChangeNotifier{
   List _toDoList=[];

  void addList(value){
    _toDoList.add(value);
    notifyListeners();
  }
  List get toDoList => _toDoList;
  int get toDoLength=>_toDoList.length;


}