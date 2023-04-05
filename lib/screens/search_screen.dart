import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recherche"),
        backgroundColor: const Color(0xFF1A2025),
        leading: IconButton(
            icon:  SvgPicture.asset('assets/icons/close.svg',),
            onPressed: () {}
        ),
      ),

      body: Container (

        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              /// Mise en forme de la barre de recherches
              Row(

                children: [
                  Expanded(
                    child: Container(
                        height:48 ,
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        margin: const EdgeInsets.all(10),
                        //padding: const EdgeInsets.all(0),
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
                                      hintStyle: TextStyle(color: Colors.white, fontSize: 12.0,fontFamily: "Proxima Nova",),
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

              /// Mise en forme de la barre: Nombre de résultats
              Container(

                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),

                padding: const EdgeInsets.fromLTRB(11.5,0, 11.5, 9),
                margin: const EdgeInsets.only(left:0, top: 10),

                child: const Text(
                  "Nombre de résultats: 42",
                  style: TextStyle(color: Colors.white, fontSize: 13.0,fontFamily: "Proxima Nova",),
                ),
              ),

              /// Affichage du premier résultat de recherche
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
                              style: TextStyle(color: Colors.white, fontSize: 15.0,fontFamily: "Proxima Nova",),
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
                              style: TextStyle(color: Colors.white, fontSize: 10.0,fontFamily: "Proxima Nova",),
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
                    left: 300,
                    top: 0,
                    bottom: 11,
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
                              fontFamily: "Proxima Nova",
                              fontSize: 20.0
                          )
                      ),
                    ),
                  ),
                ],
              ),

              /// Affichage du second résultat de recherche
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
                              style: TextStyle(color: Colors.white, fontSize: 15.0,fontFamily: "Proxima Nova",),
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
                              style: TextStyle(color: Colors.white, fontSize: 10.0,fontFamily: "Proxima Nova",),
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
                    left: 300,
                    top: 0,
                    bottom: 11,
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
                              fontFamily: "Proxima Nova",
                              fontSize: 20.0
                          )
                      ),
                    ),
                  ),
                ],
              ),

              /// Affichage du troisième résultat de recherche
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
                              style: TextStyle(color: Colors.white, fontSize: 15.0,fontFamily: "Proxima Nova",),
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
                              style: TextStyle(color: Colors.white, fontSize: 10.0,fontFamily: "Proxima Nova",),
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
                    left: 300,
                    top: 0,
                    bottom: 11,
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
                              fontFamily: "Proxima Nova",
                              fontSize: 20.0
                          )
                      ),
                    ),
                  ),
                ],
              ),

              /// Affichage du quatrième résultat de recherche
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
                              style: TextStyle(color: Colors.white, fontSize: 15.0,fontFamily: "Proxima Nova",),
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
                              style: TextStyle(color: Colors.white, fontSize: 10.0,fontFamily: "Proxima Nova",),
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
                    left: 300,
                    top: 0,
                    bottom: 11,
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
                              fontFamily: "Proxima Nova",
                              fontSize: 20.0
                          )
                      ),
                    ),
                  ),
                ],
              ),

              /// Affichage du cinquième résultat de recherche
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
                              style: TextStyle(color: Colors.white, fontSize: 15.0,fontFamily: "Proxima Nova",),
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
                              style: TextStyle(color: Colors.white, fontSize: 10.0,fontFamily: "Proxima Nova",),
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
                    left: 300,
                    top: 0,
                    bottom: 11,
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
                              fontFamily: "Proxima Nova",
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