import 'package:flutter/material.dart';
import 'main.dart';
import 'InfoBox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton.extended(
            icon: Icon(Icons.account_circle),
            label: Text('Info'),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
        body: Align(
            alignment: Alignment.center,
            child: Container(
                height: 250,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10 ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff9700b2), Color(0xff4f2ac4)]
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 30,
                        decoration: titleDecoration,
                        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Text(
                          'Contact Me:',
                          style: TextStyle(
                              fontFamily: 'Sans',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    InfoBox('7976867371',Icons.phone),
                    InfoBox('charmee@gmail.com',Icons.email),
                    InfoBox('charmeemehta01',FontAwesomeIcons.github)

                  ],
                )

            )
        )
    );
  }
}
