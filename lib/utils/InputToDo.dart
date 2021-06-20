import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/utils/MyRoutes.dart';
import 'package:untitled/utils/constants.dart';


class InputToDo extends StatelessWidget{
  String _text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter a ToDo'),
      ),
      body:
        Center(
          child: Column(
            children: [
              TextFormField(
                onChanged:(value) {
                    _text=value;
                },
                decoration: InputDecoration(
                  hintText: 'Enter To-Do Text',
                  labelText: 'Enter here',
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(alignment: Alignment.center
                ),
                  onPressed: () {
                     Provider.of<Constants>(context,listen: false).addList(_text);
                      Navigator.of(context).pop();
                  },
                  child: Text("Submit",textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
    );
  }
}
