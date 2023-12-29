import 'package:flutter/material.dart';

void main() {
  runApp(
    const ArrangeWidgets(),
  );
}

class ArrangeWidgets extends StatelessWidget {
  const ArrangeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        color: Colors.red, child: const Text("First Text")),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        color: Colors.green, child: const Text("Second Text")),
                  ),
                  Container(
                      color: Colors.blue, child: const Text("Third Text")),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.green,
                child: const Column(
                  children: [
                    Text("First Column Text"),
                    Text("Second Column Text"),
                    Text("Third Column Text"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Stack(
                children: [
                  Positioned.fill(
                      child: Container(
                    color: Colors.grey,
                  )),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("First Text"),
                      )),
                  const Align(
                      alignment: Alignment.topRight,
                      child: Text("Second Text")),
                  const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Third Text")),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
