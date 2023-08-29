import 'package:firstapp/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/screens/home.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
//import 'package:firstapp/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    //return Consumer<ThemeProvider>(builder: (context, Provider, child) {
    return MaterialApp(
      title: 'ToDo App',
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      // themeMode: Provider.themeMode,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
    //});
  }
}
