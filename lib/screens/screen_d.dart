import 'package:flutter/material.dart';

class ScreenD extends StatelessWidget {
  bool _AnsFromC=true;
  ScreenD(this._AnsFromC);
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
            if(_AnsFromC==true)
              Text("正解！", style: TextStyle(fontSize: 100, color: Colors.red,),),
            if(_AnsFromC==false)
              Text("残念！", style: TextStyle(fontSize: 100, color: Colors.black,),),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 175,
                  height: 70,
                  child: ElevatedButton(onPressed: (){
                    Navigator.popUntil(context,(_)=>_count++>3);
                  }, child: Text("最初に戻る",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(width:40),
                SizedBox(
                  width: 170,
                  height: 70,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("もう一度挑戦",style: TextStyle(fontSize: 20),)),
                ),
              ],
            )
          ],
        )
    );
  }
}
