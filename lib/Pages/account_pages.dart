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
          const Padding(
          padding:  EdgeInsets.only(top: 20),child:  Center(child: Text("Profile Picture",
            style: TextStyle(fontSize: 26),))),
              const Center(
                child: Padding(
                  padding:  EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("assets/td.png"),
                    backgroundColor: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.text,
                  decoration:const  InputDecoration(
                    suffixIcon: Icon(Icons.edit,color: Colors.grey,),
                    icon: Icon(Icons.person,size: 32,color: Colors.grey,),
                    hintText: "Enter Your Full Name ",
                    labelText: 'Name',
                    floatingLabelStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.white,width: 0.5,
                     )
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.text,
                  decoration:const  InputDecoration(
                      suffixIcon: Icon(Icons.edit,color: Colors.grey,),
                      icon: Icon(Icons.info_outline_rounded,size: 32,color: Colors.grey,),
                      hintText: "Enter Your Favoritism ",
                      labelText: 'About',
                      floatingLabelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,width: 0.5,
                          )
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.text,
                  decoration:const  InputDecoration(
                    suffixIcon: Icon(Icons.change_circle_outlined,color: Colors.grey,),
                      icon: Icon(Icons.call,size: 32,color: Colors.grey,),

                      labelText: 'Phone',
                      floatingLabelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,width: 0.5,
                          )
                      )
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
