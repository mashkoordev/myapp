import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
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

              const SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow:const  [
                          BoxShadow(
                              color: Colors.blue,
                              blurRadius: 10
                          )
                        ],
                        image:const  DecorationImage(
                          image: AssetImage('assets/td.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  const Text('TECH DRIVE',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 20,),
                  Container(
                    height: 570,
                    width: 385,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color:Colors.blue,
                          blurRadius: 15,
                        ),
                      ],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),

                    child:Column(
                      children:[
                        const SizedBox(height: 10,),
                        const Text('Reset Password',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.blue,
                        ),),
                        const SizedBox(height: 5,),
                        const Text('To get this App Features.!\n'
                            'Please Reset your password?',textAlign: TextAlign.center,style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),),
                        const SizedBox(height: 100,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            cursorColor: Colors.blue,showCursor: true,
                            keyboardType: TextInputType.emailAddress,
                            decoration:InputDecoration(
                              hintText: 'Email or username',
                              prefixIcon: const Icon(Icons.email, color: Colors.grey,),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:const  BorderSide(
                                    color: Colors.blue,width: 2
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:const  BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Text('OR?',style: TextStyle(fontSize: 18,color: Colors.blue),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            cursorColor: Colors.blue,showCursor: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration:InputDecoration(
                              hintText: 'Phone Number',
                              prefixIcon: const Icon(Icons.phone, color: Colors.grey,),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:const BorderSide(
                                  color: Colors.blue,width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:const  BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Padding(
                          padding:  EdgeInsets.only(left: 170),
                          child: Text('Change your Password?',textAlign: TextAlign.center,style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Colors.blue,
                          ),),
                        ),
                        const SizedBox(height: 75,),
                        Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(child: Text('Reset Password',
                            style: TextStyle(fontSize: 22,color: Colors.white),)),
                        ),
                        const SizedBox(height: 5,),
                        const Padding(
                          padding: EdgeInsets.only(left: 180),
                          child:  Text('Help?',style: TextStyle(fontSize: 18,color: Colors.blue),),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
