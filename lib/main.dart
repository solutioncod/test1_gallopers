import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Luto"),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: LoginPage(),
          ),
        ));
  }
}

class LoginPage extends StatefulWidget {
  // const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int pagestate = 0;
  var backgroundcolor = Colors.white;
  double yoffset = 0;
  double registerpageyoffset = 0;
  double xoffset = 0;
  double widthoffset = 0;
  double _windowheight = 0;
  double _windowwidth = 0;
  double loginopacity = 1;

  @override
  Widget build(BuildContext context) {
    _windowheight = MediaQuery.of(context).size.height;
    _windowwidth = MediaQuery.of(context).size.width;

    switch (pagestate) {
      case 0:
        backgroundcolor = Colors.white;
        yoffset = _windowheight;
        registerpageyoffset = _windowheight;
        xoffset = 0;
        widthoffset = _windowwidth;
        loginopacity = 1;
        break;
      case 1:
        backgroundcolor = Colors.blueGrey;
        yoffset = 270;
        registerpageyoffset = _windowheight;
        xoffset = 0;
        widthoffset = _windowwidth;
        loginopacity = 1;
        break;
      case 2:
        backgroundcolor = Colors.blueGrey;
        registerpageyoffset = 290;
        xoffset = 20;
        yoffset = 270;
        widthoffset = _windowwidth - 40;
        loginopacity = 0.7;
        break;
    }
    return Stack(
      children: [
        AnimatedContainer(
          duration: Duration(
            milliseconds: 300,
          ),
          curve: Curves.fastLinearToSlowEaseIn,
          color: backgroundcolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    pagestate = 0;
                  });
                },
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(top: 100),
                      child: Text(
                        'LearnFast',
                        style: TextStyle(color: Colors.black87, fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Center(
                          child: Text(
                        'Making learning easy by providing tools that focus on key concepts, skills and knowledge that are essential for deeper learning and the development of cognitive skills that will promote creative thinking, problem-solving and effective communication ',
                        style: TextStyle(fontSize: 17),
                      )),
                    ),
                  ],
                )),
              ),
              Container(
                  child: Center(
                      child: Image(
                image: AssetImage('lib/assets/unsplash.jpg'),
              ))),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pagestate == 1 ? pagestate = 0 : pagestate = 1;
                  });
                },
                child: Container(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Text('Get started'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              pagestate = 2;
            });
          },
          child: AnimatedContainer(
            width: widthoffset,
            curve: Curves.fastOutSlowIn,
            duration: Duration(milliseconds: 1000),
            transform: Matrix4.translationValues(xoffset, yoffset, 1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(26), topRight: Radius.circular(26)),
              color: Colors.blueGrey[900],
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white.withOpacity(loginopacity),
                      ),
                      child: Row(
                        children: [
                          Container(width: 50, child: Icon(Icons.email)),
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                                border: InputBorder.none,
                                hintText: 'Enter Email...'),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white.withOpacity(loginopacity),
                      ),
                      child: Row(
                        children: [
                          Container(width: 50, child: Icon(Icons.vpn_key)),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                                border: InputBorder.none,
                                hintText: 'Enter Password...'),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
                Column(children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.indigo.withOpacity(loginopacity),
                    ),
                    child: Center(
                      child: Text(
                        'LogIn',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white.withOpacity(loginopacity),
                    ),
                    child: Center(
                      child: Text(
                        'Create account',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              pagestate == 2 ? pagestate = 1 : pagestate = 2;
            });
          },
          child: AnimatedContainer(
            curve: Curves.fastOutSlowIn,
            duration: Duration(milliseconds: 1000),
            transform: Matrix4.translationValues(0, registerpageyoffset, 1),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFBBDC7C7C7), width: 2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(26), topRight: Radius.circular(26)),
              color: Colors.grey,
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Create A New Account',
                        style: TextStyle(fontSize: 25),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white.withOpacity(loginopacity),
                      ),
                      child: Row(
                        children: [
                          Container(width: 50, child: Icon(Icons.email)),
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                                border: InputBorder.none,
                                hintText: 'Enter Email...'),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white.withOpacity(loginopacity),
                      ),
                      child: Row(
                        children: [
                          Container(width: 50, child: Icon(Icons.vpn_key)),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                                border: InputBorder.none,
                                hintText: 'Enter Password...'),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 5),
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.purple.withOpacity(loginopacity),
                      ),
                      child: Center(
                        child: Text(
                          'Create Account',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white.withOpacity(loginopacity),
                      ),
                      child: Center(
                        child: Text(
                          'Back To LogIn',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(),
      ],
    );
  }
}
