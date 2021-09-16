import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(24.0)),
          ),
        ),
        drawer: const Drawer(),
        endDrawer: const Drawer(),
        backgroundColor: const Color(0xFFFFFFFF),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: const Color(0xFFFFFFFF),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_repair_service_rounded), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: 'Perfil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Sacola'),
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [MyContainer(), MyContainer(), MyContainer()],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(24.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.blue[300],
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.orangeAccent,
                offset: Offset(4.0, 4.0),
                blurRadius: 3.0)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.person),
          Expanded(
              child: Text(
            'Container com um texto grande pra quebrar a linha.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          )),
        ],
      ),
    );
  }
}
