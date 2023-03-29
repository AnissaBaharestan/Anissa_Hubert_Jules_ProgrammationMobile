import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil"),
        actions: <Widget>[
          IconButton( icon: SvgPicture.asset('assets/icons/like.svg',),
            onPressed: () {  }, ),

          IconButton( icon: SvgPicture.asset('assets/icons/whishlist.svg',),
            onPressed: () {  }, ),

        ],
        backgroundColor: const Color(0xFF1E262C),
      ),

      body: Container (

        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              /// Affichage de la barre de recherche
              Row(

                children: [
                  Expanded(
                    child: Container(
                        height:48 ,
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF1E262C),
                        ),

                        child: Column(
                          children: [
                            Row(
                              children: [

                                const Expanded(

                                  child: TextField(
                                    style: TextStyle(
                                      color:Colors.white,
                                      fontSize: 12.0,
                                    ),

                                    decoration: InputDecoration(
                                      hintText: 'Recherche un jeu...',
                                      hintStyle: TextStyle(color: Colors.white, fontSize: 12.0),

                                      contentPadding: EdgeInsets.all(10),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),

                                IconButton(
                                  icon: const Icon(Icons.search),
                                  color: Color(0xFF636AF6),
                                  iconSize: 20,
                                  onPressed: ( ) { },
                                ),
                              ],
                            )
                          ],
                        )
                    ),
                  ),
                ],
              ),

              /// Affichage de l'écran apercus du jeux mis en avant:
              Stack(
                children: [
                  Positioned(

                      child: Container(
                        height: 210,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/Fondaccueil.png'),
                          ),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(

                              padding: const EdgeInsets.fromLTRB(0,11.5, 11.5, 11.5),
                              margin: const EdgeInsets.only(left:15, top: 40),

                              child: const Text(
                                "Titan Fall 2 \nUltimate Edition",
                                style: TextStyle(color: Colors.white, fontSize: 20.0,),
                              ),
                            ),

                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                              ),
                              margin: const EdgeInsets.only(left:15, top: 10),
                              child: const Text(
                                "Une description d'un jeu mis en avant\n(peut être coder en dur)",
                                style: TextStyle(color: Colors.white, fontSize: 12.0,),
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(left:15, top:11),
                              child:RawMaterialButton(
                                fillColor: Color(0xFF636AF6),
                                padding: EdgeInsets.fromLTRB(35,10, 35, 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                onPressed: () {},

                                child: const Text("En savoir plus",
                                    style: TextStyle(
                                      color:Colors.white,
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),

                  /// Affichage de la miniature du jeu mis en avant
                  Positioned(
                    child:
                    Container(
                      margin: const EdgeInsets.only(left:260, top: 50),
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logojv.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              /// Affichage des la barre "les meilleurs ventes:
              Container(

                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),

                padding: const EdgeInsets.fromLTRB(11.5,11.5, 11.5, 9),
                margin: const EdgeInsets.only(left:0, top: 10),

                child: const Text(
                  "Les meilleurs ventes",
                  style: TextStyle(color: Colors.white, fontSize: 12.0,decoration: TextDecoration.underline,),
                ),
              ),

              /// Affichage du TOP1 Jeu mis en avant

              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 110,
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 0, 10,10),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/fondjeu.png'),
                        ),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,

                            ),

                            padding: const EdgeInsets.fromLTRB(5,5,5,0),
                            margin: const EdgeInsets.only(left:100, top: 20),

                            child: const Text("Nom du jeu",
                              style: TextStyle(color: Colors.white, fontSize: 15.0,),
                            ),
                          ),

                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),

                            padding: const EdgeInsets.fromLTRB(5,0,5,5),
                            margin: const EdgeInsets.only(left:100, top: 10),

                            child: const Text(
                              "Nom de l'éditeur\n \nPrix: 10,00 €",
                              style: TextStyle(color: Colors.white, fontSize: 10.0,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 9,
                    left: 25,
                    height: 95,
                    child: Image.asset(('assets/images/logojv.png'),
                    ),
                  ),

                  Positioned(
                    left: 294,
                    top: 0,

                    child:

                    RawMaterialButton(
                      fillColor: Color(0xFF636AF6),
                      padding: const EdgeInsets.fromLTRB(15,30,15.75,34),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      onPressed: () {
                        print("Hello");
                      },

                      child: const Text ("En savoir\n    plus",
                          style: TextStyle(
                              color:Colors.white,
                              fontSize: 20.0
                          )
                      ),
                    ),
                  ),
                ],
              ),
              /// Affichage du TOP2 Jeu mis en avant

              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 110,
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 0, 10,10),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/fondjeu.png'),
                        ),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,

                            ),

                            padding: const EdgeInsets.fromLTRB(5,5,5,0),
                            margin: const EdgeInsets.only(left:100, top: 20),

                            child: const Text("Nom du jeu",
                              style: TextStyle(color: Colors.white, fontSize: 15.0,),
                            ),
                          ),

                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),

                            padding: const EdgeInsets.fromLTRB(5,0,5,5),
                            margin: const EdgeInsets.only(left:100, top: 10),

                            child: const Text(
                              "Nom de l'éditeur\n \nPrix: 10,00 €",
                              style: TextStyle(color: Colors.white, fontSize: 10.0,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 9,
                    left: 25,
                    height: 95,
                    child: Image.asset(('assets/images/logojv.png'),
                    ),
                  ),

                  Positioned(
                    left: 294,
                    top: 0,
                    child:
                    RawMaterialButton(
                      fillColor: Color(0xFF636AF6),
                      padding: const EdgeInsets.fromLTRB(15,30,15.75,34),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      onPressed: () {
                        print("Hello");
                      },

                      child: const Text ("En savoir\n    plus",
                          style: TextStyle(
                              color:Colors.white,
                              fontSize: 20.0
                          )
                      ),
                    ),
                  ),
                ],
              ),
              /// Affichage du TOP3 Jeu mis en avant

              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 110,
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 0, 10,10),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/fondjeu.png'),
                        ),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),

                            padding: const EdgeInsets.fromLTRB(5,5,5,0),
                            margin: const EdgeInsets.only(left:100, top: 20),

                            child: const Text("Nom du jeu",
                              style: TextStyle(color: Colors.white, fontSize: 15.0,),
                            ),
                          ),

                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),

                            padding: const EdgeInsets.fromLTRB(5,0,5,5),
                            margin: const EdgeInsets.only(left:100, top: 10),

                            child: const Text(
                              "Nom de l'éditeur\n \nPrix: 10,00 €",
                              style: TextStyle(color: Colors.white, fontSize: 10.0,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 9,
                    left: 25,
                    height: 95,
                    child: Image.asset(('assets/images/logojv.png'),
                    ),
                  ),

                  Positioned(
                    left: 294,
                    top: 0,
                    child:
                    RawMaterialButton(
                      fillColor: Color(0xFF636AF6),
                      padding: const EdgeInsets.fromLTRB(15,30,15.75,34),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      onPressed: () {
                        print("Hello");
                      },

                      child: const Text ("En savoir\n    plus",
                          style: TextStyle(
                              color:Colors.white,
                              fontSize: 20.0
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF1A2025),
    );
  }
}