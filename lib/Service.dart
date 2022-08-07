import 'package:flutter/material.dart';

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff4f7593),
        title:const Text('Sirvice',
        style: TextStyle(color: Color(0xffc0a071),
        fontWeight: FontWeight.bold,),),
      ),
      body: Container(
        padding:const EdgeInsets.all(35),
        margin:const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 180,
              child: Image.asset('images/wahaj.png'),),
              const SizedBox(height: 15,),
              const SizedBox(child: Text('aliiq831@gmail.com'),),
              const SizedBox(height: 15,),
              const SizedBox(child: Text('+9647703256175'),),
            ],
          ),
        ),
      ),
    );
  }
}
