import 'package:flutter/material.dart';
import 'package:multiscreen_sample/screens/screen_c.dart';

class ScreenB extends StatelessWidget {
  String _textPassedFromScreenA;
  ScreenB(this._textPassedFromScreenA);
  int _count=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("結果"),
      ),
      body:Column(
        children: [
          SizedBox(height: 200,),
          if(_textPassedFromScreenA=="犬")
            Text("正解！", style: TextStyle(fontSize: 100, color: Colors.red,),),
          if(_textPassedFromScreenA!="犬")
            Text("残念！", style: TextStyle(fontSize: 100, color: Colors.black,),),
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 175,
                height: 70,
                child: ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("もう一度挑戦",style: TextStyle(fontSize: 20),)),
              ),
              SizedBox(width:40),
              SizedBox(
                width: 170,
                height: 70,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return ScreenC();
                  }));
                }, child: Text("次に進む",style: TextStyle(fontSize: 20),)),
              ),
            ],
          )
        ],
      )
    );
  }
}
