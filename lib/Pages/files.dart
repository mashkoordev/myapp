import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white10,
                    decoration: InputDecoration(
                      icon: Icon(Icons.search,color: Colors.pink,),
                      border: InputBorder.none,
                      hintText: 'search here',hintStyle: TextStyle(fontSize: 18,color: Colors.pink),
                    ),
                  ),
                ),
              ),


             const SizedBox(
               height: 100,
             ),
             const Text('FROM'),
              const Text('Muhammad Mashkoor',style: TextStyle(
                  fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20,
                  color: Color(0xff786abc)),),
                ],
              ),
        ),
      ),
    );
  }
}
