import 'package:flutter/material.dart';

void main() {
  runApp(
    const HomePage(),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: Builder(
            builder: (context) {
              return FloatingActionButton(onPressed: (){
                showCustomBottomSheet(context);
              },
              child: const Icon(Icons.show_chart),);
            }
          ),
          body: Center(
            child: Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  //show modal bottom sheet function
                  showCustomBottomSheet(context);
                },
                child: const Text("Show Bottom Sheet"),
              );
            }),
          ),
        ),
      ),
    );
  }
}

//default height of bottom sheet half of the screen height

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.85,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: ListView.builder(itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bottom Sheet Text"),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                );
              },
              itemCount: 40,)),
        );
      });
}
