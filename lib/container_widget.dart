import 'package:flutter/material.dart';

void main(){
  runApp(const ContainerWidget(),);
}

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(24),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 2,
                      color: Colors.red,
                    ),
                    color: Colors.green,
                  ),
                  child: const Center(child: Text("Hello",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

