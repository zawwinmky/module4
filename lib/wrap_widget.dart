import 'package:flutter/material.dart';


void main(){
  runApp(const WrapWidget(),);
}


class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body:Wrap(
            runAlignment: WrapAlignment.start,
            runSpacing: 5,
            children: [
              Chip(label: Text("First Chip"),
              backgroundColor: Colors.red,),
              Chip(label: Text("Second Chip"),
                backgroundColor: Colors.red,),
              Chip(label: Text("Third Chip"),
                backgroundColor: Colors.red,),
              Chip(label: Text("Fourth Chip"),
                backgroundColor: Colors.red,),
              Chip(label: Text("Fifth Chip"),
                backgroundColor: Colors.red,),
              Chip(label: Text("Sixth Chip"),
                backgroundColor: Colors.red,),
              Chip(label: Text("Seventh Chip"),
                backgroundColor: Colors.red,),
            ],
          ) ,
        ),
      ),
    );
  }
}
