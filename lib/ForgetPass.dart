import 'package:untitled2/Service.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/MyHomePage.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({Key? key}) : super(key: key);
  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

final TextEditingController passwordController = TextEditingController();

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {

    final passwordfield = TextFormField(
      controller: passwordController,
      obscureText:true,
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.password),
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        label: const Text('Password'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final confirmPass = TextFormField(
      controller: passwordController,
      obscureText:true,
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.password),
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        label: const Text('Confirm Password'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final loginbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color(0xffc0a071),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: 'My Home Page')));
        },
        child: const Text('Login',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title:const Text('Sign Up',
          style: TextStyle(
              color: Color(0xffc0a071),
              fontWeight: FontWeight.bold
          ),),
      ),
      body: Container(
        padding: const EdgeInsets.all(45),
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Image.asset('images/wahaj.png',),
            ),
            const SizedBox(height: 45,),
            passwordfield,
            const SizedBox(height: 15,),
            confirmPass,
            const SizedBox(height: 15,),
            loginbutton,
            const SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Service()));
              },
              child: const Text('Help',
                style: TextStyle(
                    color: Color(0xffc0a071),
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
            ),
            )
        ],
      ),
    ));
  }
}
