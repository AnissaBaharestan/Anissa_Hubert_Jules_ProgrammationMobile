import 'package:flutter/material.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/fond.png"), fit: BoxFit.cover),
        ),
        child: Password(),
      ),
    );
  }
}

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => PasswordState();
}

class PasswordState extends State<Password> {
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
            child: const Text("Mot de passe oublié",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
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
            child : const Text("Veuillez saisir votre email \n afin de réinitialiser votre mot de passe",
              textAlign: TextAlign.center,
              style : TextStyle(
                color: Colors.white,
                fontSize:17.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 17.0),
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

          const SizedBox(height: 80.0,),
          Container(
            width: double.infinity,
            child:RawMaterialButton(
              fillColor: Color(0xFF636AF6),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () {},
              child: Text("Renvoyer mon mot de passe",
                  style: TextStyle(
                      color:Colors.white,
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