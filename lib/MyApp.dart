
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/utils/InputToDo.dart';
import 'HomeScreen.dart';
import 'utils/MyRoutes.dart';
import 'package:google_fonts/google_fonts.dart';
class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return  MaterialApp(
        theme: ThemeData(
          backgroundColor: Colors.lightBlueAccent,
          fontFamily: GoogleFonts.poppins().fontFamily,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute:  MyRoutes.HomeScreen,
        routes: {
          MyRoutes.InputToDo  :(context)=> InputToDo(),
          MyRoutes.HomeScreen :(context)=> HomeScreen(),
         },
    );
  }
}