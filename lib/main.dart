import 'package:flutter/material.dart';
import 'SecondRoute.dart';


BoxDecoration titleDecoration = BoxDecoration(
    border: Border(
        bottom: BorderSide(color: Colors.white,
            style: BorderStyle.solid
        ))
);

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomeRoute(),
    );
  }
}

class HomeRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.call),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()));
          },
          label: Text("Contact Me")),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child:  Container(
              height: 250,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10 ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xfff4624a), Color(0xffea2893)]
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      margin: EdgeInsets.only(top: 50),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 95,
                        width: 95,
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('Images/IdPhoto.jpg'),
                              fit: BoxFit.fill,
                            )
                        ),
                      )
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(0,70, 20, 0),
                              child: Text(
                                'Charmee Mehta',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Sans",
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 15, 20, 0),
                                  child: Text(
                                    'B.Tech in Information Technology at  \nK. J. Somaiya College of Engineering',
                                    style: TextStyle(
                                      fontFamily: "Sans",
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                              )
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child:  Container(
              height: 230,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10 ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffea2893), Color(0xff9700b2)]
                  ),
                  borderRadius: BorderRadius.circular(20)),
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
                        'About Me:',
                        style: TextStyle(
                            fontFamily: 'Sans',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 25, left: 5, right: 5),
                      width: double.infinity,
                      height: 140,
                      child: Text(
                        'I am currently pursuing B.Tech in Information Technology from K.J. Somaiya College of Engineering.I am a quick learner who brings energy and motivation to any task.I enjoy combining logic and creativity to find the best way to solve problems.  ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
