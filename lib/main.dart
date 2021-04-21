import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/MainPage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
 
void main() async{
   await DotEnv.load();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}
