import 'package:flutter/material.dart';
import 'package:proje/nav.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  } catch (e) {
    // ignore: avoid_print
    print('failed to initialize');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.brown[100],
      ),
      home: const Nav(),
    );
  }
}
