import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();

  String hasil = "HASIL INPUT";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text Field Control"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: myController,
                  onChanged: (value) {
                    print("onChanged : $value");
                    // setState(() {
                    //   hasil = value;
                    // });
                  },
                  onSubmitted: (value) {
                    print("onSubmitted $value");
                    setState(() {
                      hasil = value;
                    });
                  },
                  onEditingComplete: () {
                    print("EDIT SUCCESS");
                    print(myController.text);
                  },
                ),
                Text(hasil),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
