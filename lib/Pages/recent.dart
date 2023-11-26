import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: [
      SystemUiOverlay.bottom,
    ]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white12,
        appBar:
          AppBar(
          backgroundColor: Colors.white12,
           toolbarHeight: 110,
           flexibleSpace: SafeArea(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: 60,
                 width: double.infinity,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.cyan,
                   ),
                 child:TextField(
                   textAlign: TextAlign.center,
                   keyboardType: TextInputType.text,
                   cursorColor: Colors.blueGrey,
                   decoration: InputDecoration(
                     icon: Center(child: Icon(Icons.search,color: Colors.black54,)),
                     border: InputBorder.none,
                     hintText: 'search here',
                      labelText: 'Type here'
                   ),
                 ),
               ),
             ),
           ),

                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                          child: Text(
                            'Recent',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      Tab(
                          child: Text(
                            'Star',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
          drawer: SafeArea(
            child: Drawer(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(70))
              ),
              width: 320,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child:  DrawerHeader(

                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(70)),
                        color: Colors.teal,
                      ),
                      child: ListTile(
                          leading: CircleAvatar(
                            radius: 33,
                            backgroundColor: Colors.white10,
                            backgroundImage: AssetImage('assets/td.png'),
                          ),
                          title: Text('Mashkoor'),
                          subtitle: Text('Admin'),
                          trailing: InkWell(
                              onTap: (){
                                Navigator.pop(context);},
                              child: Icon(Icons.backspace_outlined))
                      ),
                    ),
                  ),
                  Container(

                    child: ListTile(
                      title: const Text('Scanner'),
                      leading: Icon(Icons.scanner_outlined),
                      onTap: () {
                        // Update the app state...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(

                    child: ListTile(
                      leading: Icon(Icons.file_download_done),
                      title: const Text('File Transfer'),
                      onTap: () {
                        // Update the app state...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
                    ),

                    child: ListTile(
                      leading: Icon(Icons.recycling),
                      title: const Text('Recycle Bin'),
                      onTap: () {
                        // Update the app state...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(Icons.pan_tool_sharp),
                      title: const Text('Tools'),
                      onTap: () {
                        // Update the app state...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(Icons.computer),
                      title: const Text('Get Free WPS for PC'),
                      onTap: () {
                        // Update the app state...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    color: Colors.black26,
                    child: ListTile(
                      leading: Icon(Icons.verified),
                      title: const Text('Verify as Student'),
                      onTap: () {
                        // Update the app state...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(

                    child: ListTile(
                      leading: Icon(Icons.pages),
                      title: const Text('Plug_in Management'),
                      onTap: () {
                        // Update the app state...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(

                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: const Text('Settings'),
                      onTap: () {
                        // Update the app state...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(

                    child: ListTile(
                      leading: Icon(Icons.help),
                      title: const Text('Help & FeedBack'),
                      onTap: () {
                        // Update the app state...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

      ),
    );
  }
}


class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                  child: Text(
                    'Recent',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Tab(
                  child: Text(
                    'Star',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Recent',style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,
              ),),
            ),
            Center(
              child: Text('Star',style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}


