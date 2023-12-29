import 'package:flutter/material.dart';

void main() {
  runApp(
    const Module4Video6(),
  );
}

class Module4Video6 extends StatelessWidget {
  const Module4Video6({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollWidget(),
        ),
      ),
    );
  }
}

class CustomScrollWidget extends StatelessWidget {
  const CustomScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        //list view
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return Column(
            children: [
              Image.network(
                "https://images2.alphacoders.com/474/474206.jpg",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
            ],
          );
        }, childCount: 30)),
        //Grid view
        SliverGrid(
          delegate:
              SliverChildBuilderDelegate(childCount: 20, (context, index) {
            return Image.network(
                "https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png");
          }),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 200,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12),
        )
      ],
    );
  }
}
