import 'package:flutter/material.dart';
import 'package:module4/container_widget.dart';

void main() {
  runApp(
    const DataDisplayWidget(),
  );
}

class DataDisplayWidget extends StatelessWidget {
  const DataDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "this is text",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                    decoration: TextDecoration.underline,
                    height:
                        1.7, //line height 1.7 is used as default to show correctly burmese fonts
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: "This is normal text. ",
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                    text: "This is bold text",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ])),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    "https://media.npr.org/assets/img/2015/11/24/ajeup0ayctw4ztltklrnuvtm-y4xulezgneawbqw4cs_custom-7aa29347d5da230c6101168c71549a7399302d0c-s1100-c50.jpg",
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Builder(builder: (context) {
                  return TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Text Button is clicked")));
                      },
                      child: const Text("This is text button"));
                }),
                const SizedBox(
                  height: 20,
                ),
                Builder(builder: (context) {
                  return ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Elevated Button is clicked")));
                      },
                      child: const Text("Elevated Button"));
                }),
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.add_location,
                  size: 30,
                  color: Colors.red,
                ),
                const CustomDropdownButton(),
                const SizedBox(
                  height: 20,
                ),
                const CustomRadios(),
                const SizedBox(
                  height: 20,
                ),
                const CustomCheckbox(),
                const Divider(
                  thickness: 2,
                  color: Colors.red,
                ),
                Builder(
                  builder: (context) {
                    return ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(context){
                        return const ContainerWidget();
                      } ));
                    }, child:const Text("Navigate"));
                  }
                ),
              ],
            ),
          ),
        ),
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
  List<String> dropdownItems = [
    "one",
    "two",
    "three",
    "four",
  ];
  String selectedItem = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    selectedItem = dropdownItems.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: selectedItem,
        items: dropdownItems
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedItem = value ?? "";
          });
        });
  }
}

class CustomRadios extends StatefulWidget {
  const CustomRadios({super.key});

  @override
  State<CustomRadios> createState() => _CustomRadiosState();
}

class _CustomRadiosState extends State<CustomRadios> {
  List<String> radioItems = ['one', 'two', 'three', 'four'];
  String selectedItem = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedItem = radioItems.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: radioItems
          .map((e) => Row(
                children: [
                  Radio(
                      value: e,
                      groupValue: selectedItem,
                      onChanged: (value) {
                        setState(() {
                          selectedItem = value ?? "";
                        });
                      }),
                  Text(e),
                ],
              ))
          .toList(),
    );
  }
}

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = !isChecked;
              });
            }),
        const SizedBox(
          width: 10,
        ),
        Text(isChecked ? "Checked" : "Unchecked"),
      ],
    );
  }
}
