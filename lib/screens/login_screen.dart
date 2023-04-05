import 'package:flutter/material.dart';
import 'package:private/screens/enrollment_screen.dart';
import 'package:private/screens/password_screen.dart';
import 'package:private/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fond.png"), fit: BoxFit.cover),
          ),
          child: Login(),
        ),
      );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,

        children:[
          const SizedBox(height: 40),

          Align(
            alignment: Alignment.center,
            child: const Text("Bienvenue!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Google Sans",
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Align(
            alignment: Alignment.center,
            child : const Text("Veuillez vous connecter ou \n créer un nouveau compte \n pour utiliser l'application. " ,
              textAlign: TextAlign.center,
              style : TextStyle(
                color: Colors.white,
                fontFamily: "Proxima Nova",
                fontSize:17.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
              fontFamily: "Proxima Nova",),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              hintText: "E-mail",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                fillColor: Color(0xFF1E262C),
                filled: true,
                ),
          ),
          const SizedBox(
            height: 26.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontFamily: "Proxima Nova",),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              hintText: "Mot de passe",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none),
              fillColor: Color(0xFF1E262C),
              filled: true,
            ),
            obscureText: true,
          ),

          const SizedBox(height: 88.0,),
          Container(
            width: double.infinity,
            child:RawMaterialButton(
              fillColor: Color(0xFF636AF6),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomePage()),
                );
              },
              child: Text("Se connecter",
                  style: TextStyle(
                      color:Colors.white,
                      fontFamily: "Proxima Nova",
                      fontSize: 17.0)
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            width: double.infinity,
            height: 65,
            child:OutlinedButton(
             style: OutlinedButton.styleFrom(
               side: BorderSide(width: 3, color: Color(0xFF636AF6)),
               padding: EdgeInsets.symmetric(vertical: 20.0),
             ),
              child: Text("Créer un nouveau compte",
                  style: TextStyle(
                      fontFamily: "Proxima Nova",
                      color:Colors.white,
                      fontSize: 17.0)
              ),
            onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EnrollmentPage()),
                );
            },
            ),

          ),
          const SizedBox(
            height: 110.0,
          ),
          Align(
            alignment: Alignment.center,
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PasswordPage()),
                    );
                },
                child: const Text("Mot de passe oublié",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                    fontFamily: "Proxima Nova",
                  decoration: TextDecoration.underline)
                ),
                ),
              ),
            /*child: const Text("Mot de passe oublié", textAlign: TextAlign.center,
              style: TextStyle(
              decoration: TextDecoration.underline, color: Colors.white),
            ),
            */
          ),
        ],
      ),
    );
  }
}