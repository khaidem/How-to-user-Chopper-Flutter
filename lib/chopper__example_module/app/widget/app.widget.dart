import 'package:chopperdemo/chopper__example_module/product/pages/prodcut.page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Base',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductPage(),
    );
  }
}
