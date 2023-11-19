import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  final String data;

  const DrawerScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
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

    );
  }
}

