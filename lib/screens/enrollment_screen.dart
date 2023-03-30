import 'package:flutter/material.dart';
import 'package:private/screens/home_screen.dart';

class EnrollmentPage extends StatefulWidget {
  const EnrollmentPage({Key? key}) : super(key: key);

  @override
  State<EnrollmentPage> createState() => _EnrollmentPageState();
}

class _EnrollmentPageState extends State<EnrollmentPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/fond.png"), fit: BoxFit.cover),
        ),
        child: Enrollment(),
      ),
    );
  }
}

class Enrollment extends StatefulWidget {
  const Enrollment({Key? key}) : super(key: key);

  @override
  State<Enrollment> createState() => EnrollmentState();
}

class EnrollmentState extends State<Enrollment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,

        children:[
          const SizedBox(height:0),

          Align(
            alignment: Alignment.center,
            child: const Text("Inscription",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Google Sans",
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Align(
            alignment: Alignment.center,
            child : const Text("Veuillez saisir ces différentes informations, \n afin que vos listes soient sauvegardées.",
              textAlign: TextAlign.center,
              style : TextStyle(
                color: Colors.white,
                fontFamily: "Proxima Nova",
                fontSize:18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 17.0, fontFamily: "Proxima Nova",),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              hintText: "Nom d'utilisateur",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none),
              fillColor: Color(0xFF1E262C),
              filled: true,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 17.0, fontFamily: "Proxima Nova",),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              hintText: "Email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none),
              fillColor: Color(0xFF1E262C),
              filled: true,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 17.0, fontFamily: "Proxima Nova",),
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
          const SizedBox(
            height: 15.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 17.0, fontFamily: "Proxima Nova",),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              hintText: "Vérification du mot de passe",
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
              child: Text("S'inscrire",
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
        ],
      ),
    );
  }
}