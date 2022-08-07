// ignore: unused_import
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled2/Courses.dart';
import 'package:untitled2/Service.dart';
import 'package:untitled2/Certificate.dart';

class Media extends StatefulWidget {
  const Media({Key? key}) : super(key: key);

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4f7593),
        title: const Text('Media',
        style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffc0a071)),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Not Found Media',
            style: TextStyle(fontWeight: FontWeight.bold,
            color: Color(0xff4f7593),
            fontSize: 30),),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              backgroundColor: const Color(0xff4f7593),
              title: const Text('Media',
                style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffc0a071)),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Courses()));
              },
              child: const ListTile(
                title: Text('Courses',
                style: TextStyle(
                    fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffc0a071)
                ),),
              )
              ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Certificate()));
              },
                child: const ListTile(
                  title: Text('Certificate',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffc0a071)
                    ),),
                )
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Media()));
              },
                child: const ListTile(
                  title: Text('Media',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffc0a071)
                    ),),
                )
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Service()));
              },
                child: const ListTile(
                  title: Text('Service',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffc0a071)
                    ),),
                )
            ),
          ],
        ),
      ),
    );
  }
}
