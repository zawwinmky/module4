import 'package:flutter/material.dart';

void main() {
  runApp(
    const CustomDialog(),
  );
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    child: const Text("Show Alert Dialog"),
                  );
                }),
                const SizedBox(
                  height: 20,
                ),
                Builder(builder: (context) {
                  return ElevatedButton(
                      onPressed: () {
                        showCustomDialog(context);
                      },
                      child: const Text("Show Custom Dialog"));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void showAlertDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Center(child: Text("Hello")),
          content: const Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(
                width: 20,
              ),
              Text("Loading Data"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            )
          ],
        );
      });
}

void showCustomDialog(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          surfaceTintColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("this is Custom Dialog"),
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  "https://logowik.com/content/uploads/images/flutter5786.jpg",
                  height: 200,
                  fit: BoxFit.cover,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Close"))
              ],
            ),
          ),
        );
      });
}
