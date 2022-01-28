import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiscreen_sample/screens/screen_d.dart';

class ScreenC extends StatefulWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  _ScreenCState createState() => _ScreenCState();
}

class _ScreenCState extends State<ScreenC> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("問題"),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Q.タヌキはイヌ科？タヌキ科？",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.asset("images/tanuki.jpg"),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 175,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ScreenD(true);
                        }));
                      },
                      child: Text(
                        "イヌ科",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                SizedBox(width: 40),
                SizedBox(
                  width: 170,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return ScreenD(false);
                            }));
                      },
                      child: Text(
                        "タヌキ科",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ],
            )
          ],
        ));
  }
}
