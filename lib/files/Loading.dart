import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Loading extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = new PageController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Container(
          padding: new EdgeInsets.only(
            top: 16.0,
          ),
          decoration: new BoxDecoration(color: Colors.black),
          child: new Stack(
              alignment: FractionalOffset.bottomCenter,
              children: <Widget>[
                new PageView(
                  children: <Widget>[
                    Scaffold(
                      body: Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),

                        child:Container(

                          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Form(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Image(
                                      image: AssetImage('assets/images/define.png'),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80,
                                  ),
                                  Center(
                                    child: Text(
                                      'DEFINE YOUR LIMITS',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),),
                    Scaffold(
                      body: Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),

                        child:Container(
                          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Form(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Image(
                                      image: AssetImage('assets/images/goals.png'),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80,
                                  ),
                                  Center(
                                    child: Text(
                                      'SET YOUR GOALS',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ],
                              ),
                            ),),
                        ),
                      ),),
                    Scaffold(
                        body: Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
                          child: Form(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: CircleAvatar(
                                      backgroundImage:
                                      AssetImage('assets/images/uhub.jpeg'),
                                      radius: 100.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Center(
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Center(
                                    child: TextField(
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'USER ID',
                                        hintStyle: TextStyle(color: Colors.black26),
                                        // filled: true,
                                        // fillColor:
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(12.0)),
                                          borderSide:
                                          BorderSide(color: Colors.green, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                          borderSide: BorderSide(color: Colors.green),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Center(
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: 'PASSWORD',
                                        hintStyle: TextStyle(color: Colors.black26),
                                        // filled: true,
                                        // fillColor:
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                          borderSide:
                                          BorderSide(color: Colors.green, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                          borderSide: BorderSide(color: Colors.green),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ],

                  // You can have different Layouts/ Widgets in your app.

                  controller: controller,
                ),
                new Container(
                  margin: new EdgeInsets.only(
                    top: 16.0,
                    bottom: 16.0,
                  ),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                      dotHeight: 16,
                      dotWidth: 16,
                      type: WormType.thin,
                      // strokeWidth: 5,
                    ),
                  ),
                )
              ]),
        ));
  }
}