import 'package:flutter/material.dart';

void main(){runApp(const FirstScreen(),);}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SecondScreen();
                  }));
                },
                child: const Text("Navigate to Second Screen"),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios),
          );
        }),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Second Screen"),
            const SizedBox(height: 20,),
            Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const ThirdScreen();
                    }));
                  },
                  child: const Text("Navigate to Third Screen"));
            }),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_ios_new),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
           const Text("Third Screen"),
            const SizedBox(height: 20,),
            Builder(builder: (context){
              return ElevatedButton(onPressed: (){
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
                  return const FirstScreen() ;
                }), (route) => false);
              }, child: const Text("Go to Home"));
            })
          ],
        ),
      ),
    );
  }
}
