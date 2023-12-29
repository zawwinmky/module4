import 'package:flutter/material.dart';

void main() {
  runApp(
    const ScrollWidget(),
  );
}

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          // body:CustomListView() ,
          // body: CustomGridView(),
          body: CustomGridViewBuilder(),
          // body: ListViewBuilder(),
        ),
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
          20,
          (index) => Container(
                margin: const EdgeInsets.all(10),
                child: Image.network(
                  "https://blz-contentstack-images.akamaized.net/v3/assets/bltf408a0557f4e4998/blt49ecf5a649fbaf0c/6526c909c9cf4e07ce162d24/10.0_Dragonflight_BrowsingCard_960x540_enUS.jpg",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              )),
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 200,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Image.network(
                "https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png");
          },
          childCount: 20,
        ));
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
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
        });
  }
}

class CustomGridViewBuilder extends StatelessWidget {
  const CustomGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          mainAxisExtent: 200),
      itemBuilder: (context, index) {
        return Image.network(
            "https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png");
      },
      itemCount: 20,
    );
  }
}
