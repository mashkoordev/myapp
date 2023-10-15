import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Login'),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
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
                            color: Colors.red,
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
                        color:Colors.red,
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
                      const Text('LogIn',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.red,
                      ),),
                      const SizedBox(height: 5,),
                      const Text('To get this App Features.!\n'
                          'Please login Firstly...?',textAlign: TextAlign.center,style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),),
                      const SizedBox(height: 100,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(cursorColor: Colors.red,
                          keyboardType: TextInputType.emailAddress,
                          decoration:InputDecoration(
                            hintText: 'Email or username',
                            prefixIcon: const Icon(Icons.email,color: Colors.grey,),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:const  BorderSide(
                                color: Colors.red,width: 2
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
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(cursorColor: Colors.red,
                          keyboardType: TextInputType.visiblePassword,
                          decoration:InputDecoration(
                            hintText: 'Password',
                            prefixIcon: const Icon(Icons.lock_open, color: Colors.grey),
                            suffixIcon:const Icon(Icons.visibility_off_rounded,color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:const BorderSide(
                                color: Colors.red,width: 2
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
                        child: Text('Forgot your Password?',textAlign: TextAlign.center,style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.red
                        ),),
                      ),
                      const SizedBox(height: 75,),
                      Container(
                        height: 50,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text('Login',
                          style: TextStyle(fontSize: 22,color: Colors.white),)),
                      ),
                      SizedBox(height: 5,),
                      Row(
                          children:const [ Padding(
                            padding:  EdgeInsets.only(left: 110),
                            child: Text("Don't Have An Account?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.black
                              ),),
                          ),
                            SizedBox(width: 4,),
                            Text('SignUp',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,

                                  color: Colors.red
                              ),),
                          ]
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
