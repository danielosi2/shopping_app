import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/provider/cart_provider.dart';

import 'package:shopping_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.lightBlueAccent,
              primary: Colors.lightBlueAccent,
            ),
            inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
              prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
            ),
            textTheme: const TextTheme(
                titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                titleLarge: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
              centerTitle: true,
            ),
            useMaterial3: true,
          ),
          home: const HomePage()),
    );
  }
}
