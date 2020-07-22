import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InfoBox extends StatelessWidget{

  final String text1;
  final IconData icon1;

  InfoBox(this.text1, this.icon1);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
        alignment: Alignment.center,
        child: Container(
            height: 70,
            width: 380,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child:RawMaterialButton(
                      fillColor:Color(0xff000000),
                      shape: CircleBorder(),
                      onPressed: () {},
                      child: Icon(
                        icon1,
                        color: Color(0xffea2893),
                        size: 28,
                      ),
                    ),
                    padding: EdgeInsets.all(10)
                ),
                Container(
                  height: 100,
                  width: 260,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Text(
                    text1,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Sans',
                        fontSize: 15 ,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                )
              ],
            )
        )
    );
  }

}

