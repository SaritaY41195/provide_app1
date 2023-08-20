import 'package:flutter/material.dart';
import 'package:provide_app1/home.dart';
import 'package:provide_app1/list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberListProvider()),
      ],
      child: MaterialApp(
        title: 'Provider App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.teal,
        ),
        home: const Home(),
      ),
    );
  }
}
