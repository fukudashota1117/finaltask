import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiscreen_sample/screens/screen_b.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  _ScreenAState createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  String _inputText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("問題"),
        ),
        body: Column(
          children: [
            SizedBox(height:20),
            Text("Q.この動物の名前は？",style: TextStyle(fontSize:20),),
            SizedBox(height:20),
            Image.asset("images/dog.jpg"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "ここに答えを入力してください",
                ),
                onChanged: (value) {
                  setState(() {
                    _inputText = value;
                  });
                },
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if(_inputText==""){
                      showCupertinoDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CupertinoAlertDialog(
                            title: Text("エラー",style: TextStyle(color: Colors.red),),
                            content: Text("正しく入力されていません"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                child: Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    }else {
                      showCupertinoDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CupertinoAlertDialog(
                            title: Text("確認"),
                            content: Text("$_inputTextでよろしいですか？"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("cancel")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                          return ScreenB(_inputText);
                                        }));
                                  },
                                  child: Text("OK")),
                            ],
                          );
                        },
                      );
                    }//kore
                  },
                  child: Text("解答"),
                ),
              ],
            ),
          ],
        ));
  }
}
