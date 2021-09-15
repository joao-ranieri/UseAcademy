import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Use Academy'),
          centerTitle: true,
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: const Color(0xFFFFFFFF),
          unselectedLabelStyle: TextStyle(color: Colors.grey[300]),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_repair_service_rounded), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: 'Perfil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Sacola'),
          ],
        ),
      ),
    );
  }
}
