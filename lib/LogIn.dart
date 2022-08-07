
import 'package:flutter/material.dart';
import 'package:untitled2/ForgetPass.dart';
import 'package:untitled2/MyHomePage.dart';
import 'package:untitled2/SignUp.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {

    final emailfield = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        label: const Text('Email Address'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
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
    final loginbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color:const Color(0xffc0a071),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>const MyHomePage(title: 'My Home Page')));
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
      body: Container(
        padding: EdgeInsets.all(50),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 180,
                  child: Image.asset('images/wahaj.png',),
                ),
                const SizedBox(height: 35,),
                emailfield,
                const SizedBox(height: 35,),
                passwordfield,
                const SizedBox(height: 35,),
                loginbutton,
                const SizedBox(height: 15,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const ForgetPass()));
                  },
                  child:const Text("If forget password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xffc0a071),
                    ),),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignUp()));
                      },
                      child: const Text('Sign Up',
                      style: TextStyle(
                        color: Color(0xffc0a071),
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


