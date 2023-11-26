import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_bar/Pages/files.dart';
import 'package:new_bar/Pages/signin.dart';
import 'package:new_bar/Pages/recent.dart';
import 'package:new_bar/Pages/signup.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final Screens =[
    HomePage(),
    UploadPage(),
    FavoritePage(),
    AccountPage(),
    TestPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (Index) => setState(()
          => currentIndex = Index
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.recent_actors_sharp,
            ),
            label: "Recent",
              backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add_alt_1_outlined,
              ),
              label: "Signup",
              backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,
              ),
              label: "Sign in",
              backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy,
              ),
              label: "files",
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
              ),
              label: "Profile",
              backgroundColor: Colors.black
          ),
        ],
      ),
    ));
  }
}
