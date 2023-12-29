import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomDropdownButton(),
      ),
    );
  }
}


class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({super.key});

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
