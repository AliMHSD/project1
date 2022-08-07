
import 'package:untitled2/Service.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/MyHomePage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}
final TextEditingController firstNameController = TextEditingController();
final TextEditingController lastNameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {

    final FirstName = TextFormField(
      controller: firstNameController,
      keyboardType: TextInputType.name,
      onSaved: (value){
        firstNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person),
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        label: const Text('First Name'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final LastName = TextFormField(
      controller: lastNameController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
        lastNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person),
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        label: const Text('Last Name'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
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
    final signUpbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color(0xffc0a071),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'My Home Pge')));
        },
        child: const Text('Sign Up',
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
      backgroundColor: const Color(0x1ABD8383),

      body: Container(
        padding: const EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 180,
                child: Image.asset('images/wahaj.png',),
              ),
              const SizedBox(height: 15,),
              FirstName,
              const SizedBox(height: 15,),
              LastName,
              const SizedBox(height: 15,),
              emailfield,
              const SizedBox(height: 15,),
              passwordfield,
              const SizedBox(height: 15,),
              confirmPass,
              const SizedBox(height: 10,),
              signUpbutton,
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Service()));
                },
                child:const Text('Help!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffc0a071),
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
