import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("SignUp"),
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
                            color: Colors.green,
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
                        color:Colors.green,
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
                      const Text('SignUp',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.green,
                      ),),
                      const SizedBox(height: 5,),
                      const Text('To get this App Features.!\n'
                          'Please SignUp Firstly...?',textAlign: TextAlign.center,style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),),
                      const SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          cursorColor: Colors.green,
                          keyboardType: TextInputType.text,
                          decoration:InputDecoration(
                            hintText: 'Enter Your Full Name',
                            prefixIcon: const Icon(Icons.person_add_alt_1_outlined,color: Colors.grey,),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:const  BorderSide(
                                  color: Colors.green,width: 2
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
                        child: TextFormField(
                          cursorColor: Colors.green,
                          keyboardType: TextInputType.emailAddress,
                          decoration:InputDecoration(
                            hintText: 'Email',
                            prefixIcon: const Icon(Icons.email,color: Colors.grey,),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:const  BorderSide(
                                  color: Colors.green,width: 2
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
                        child: TextFormField(
                          cursorColor: Colors.green,
                          keyboardType: TextInputType.visiblePassword,
                          decoration:InputDecoration(
                            hintText: 'Password',
                            prefixIcon: const Icon(Icons.lock_open, color: Colors.grey,),
                            suffixIcon:const Icon(Icons.visibility_off_rounded, color: Colors.grey,),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:const BorderSide(
                                color: Colors.green, width: 2,
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
                        child: TextFormField(
                          cursorColor: Colors.green,
                          keyboardType: TextInputType.visiblePassword,
                          decoration:InputDecoration(
                            hintText: 'Confirm Password',
                            prefixIcon: const Icon(Icons.lock_open, color: Colors.grey,),
                            suffixIcon:const Icon(Icons.visibility_off_rounded, color: Colors.grey,),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:const BorderSide(
                                color: Colors.green, width: 2,
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
                        padding:  EdgeInsets.only(left: 280),
                        child: Text('Help?',textAlign: TextAlign.center,style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.green
                        ),),
                      ),
                      const SizedBox(height: 35,),
                      Container(
                        height: 50,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text('SignUp',
                          style: TextStyle(fontSize: 22,color: Colors.white),)),
                      ),
                      const  SizedBox(height: 5,),
                      Row(
                          children:const [ Padding(
                            padding:  EdgeInsets.only(left: 110),
                            child: Text('Already have an Account?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.black
                              ),),
                          ),
                            SizedBox(width: 4,),
                            Text('Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,

                                color: Colors.green,
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
