import 'package:flutter/material.dart';

import 'package:untitled2/Start.dart';

void main() => runApp(const Wahajorg());

class Wahajorg extends StatelessWidget {
  const Wahajorg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Wahajorg',
    theme: ThemeData(primarySwatch: Colors.blueGrey,
      ),
    debugShowCheckedModeBanner: false,
    home:const Start(),
    );
  }
}

