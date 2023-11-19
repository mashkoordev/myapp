import 'package:flutter/material.dart';

import 'drawer.dart';

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
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(cursorColor: Colors.red,
                  keyboardType: TextInputType.text,
                  decoration:InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.clear,color: Colors.grey,),
                    prefixIcon: InkWell(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => DrawerScreen(data: 'Drawer',)));
                        },
                        child: const Icon(Icons.menu,color: Colors.grey,)),
                  ),
                ),
              ),
              Divider(
               thickness: 4,
                color: Colors.black12,
              ),
              SizedBox(
                height: 15,
              ),
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

            ],
          ),
        ),
      ),

    );
  }
}
