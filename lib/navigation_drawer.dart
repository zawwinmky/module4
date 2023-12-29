import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          drawer: Builder(
            builder: (context) {
              return Drawer(
                width: 250,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children:  [
                    const DrawerHeader(
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    ),child: Center(child: Text("Drawer Header",style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),)),),
                    ListTile(leading:const Icon(Icons.message),title: const Text("Messages"),
                    onTap: (){},),
                    ListTile(leading:const Icon(Icons.account_circle),title: const Text("Account"),
                    onTap: (){},),
                    ListTile(leading:const Icon(Icons.settings),title: const Text("Setting"),
                    onTap: (){},),
                     ListTile(leading: const Icon(Icons.close),title: const Text("Close"),
                    onTap: (){
                       Navigator.of(context).pop();
                    },),
                  ],
                ),
              );
            }
          ),
          body: Center(
            child: Builder(
              builder: (context) {
                return ElevatedButton(
                    onPressed: () {
                      //open drawer function
                Scaffold.of(context).openDrawer();
                    }, child: const Text("Open Drawer"));
              }
            ),
          ),
        ),
      ),
    );
  }
}