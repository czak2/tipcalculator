import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:tip_calculator/main.dart';
import 'home_page.dart';

void main() {
  // For disabling landscape view
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SpaceMono',
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}
