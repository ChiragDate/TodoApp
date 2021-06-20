import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/utils/constants.dart';
import 'MyApp.dart';

main()=>runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context)=>Constants())],
    child: MyApp()));