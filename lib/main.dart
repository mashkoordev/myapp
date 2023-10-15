import 'package:flutter/material.dart';
import 'package:new_bar/Pages/account_pages.dart';
import 'package:new_bar/Pages/favorite_pages.dart';
import 'package:new_bar/Pages/home_page.dart';
import 'package:new_bar/Pages/upload_pages.dart';


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
  final Screens =const [
    HomePage(),
    UploadPage(),
    FavoritePage(),
    AccountPage(),
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
            icon: Icon(Icons.logout_outlined,
            ),
            label: "Login",
              backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add_alt_1_outlined,
              ),
              label: "SignUp",
              backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_reset_outlined,
              ),
              label: "Reset Password",
              backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box,
              ),
              label: "Profile",
              backgroundColor: Colors.black
          ),
        ],
      ),
    ));
  }
}
