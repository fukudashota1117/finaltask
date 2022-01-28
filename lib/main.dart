import 'package:flutter/material.dart';
import 'package:multiscreen_sample/screens/screen_a.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Navigation Basics",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("クイズ"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text(
              "動物クイズ",
              style: TextStyle(fontSize: 50,),
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ScreenA();
                  }));
                },
                child: Text(
                  "スタート",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ]),
        ));
  }
}
