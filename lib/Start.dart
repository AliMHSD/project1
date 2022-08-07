import 'package:flutter/material.dart';
import 'package:untitled2/LogIn.dart';
import 'package:untitled2/SignUp.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 2, child: Scaffold(
        appBar: AppBar(
          backgroundColor:const Color(0xff4f7593),
          title:const Text('Wahajorg',
        style: TextStyle(color: Color(0xffc0a071)),),
          bottom:const TabBar(tabs: [
            Tab(icon: Icon(Icons.login), text: 'LogIn',),
            Tab(icon: Icon(Icons.app_registration), text: 'SignUp',)
          ]),
        ),
        body: const TabBarView(children: [
          LogIn(),
          SignUp()
        ]),
      )),

    );
  }
}
