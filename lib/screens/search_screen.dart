import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_screen.dart';

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
        title: const Text("Recherche",
          style:TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        backgroundColor: const Color(0xFF1A2025),
        leading: IconButton(
            icon:  SvgPicture.asset('assets/icons/close.svg',),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomePage()),
              );
            }
        ),
      ),

      body: Container (
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                                      hintText: 'Rechercher un jeu...',
                                      hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
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

              Stack(
                  children:   <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(0,0,0,0),
                      margin: const EdgeInsets.only(left:15, top:10 ),
                      child: const Text(
                        "Nombre de résultats : 42",
                        style: TextStyle(color: Colors.white, fontSize: 16.0,decoration: TextDecoration.underline,),
                      ),
                    ),

                    // Meilleur vente numéro 1:

                    const venteTop1(),
                    const apptop1(),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      margin: const EdgeInsets.only(left:100, top: 70),
                      child: const Text(
                        "Nom du jeu",
                        style: TextStyle(color: Colors.white, fontSize: 15.0,),
                      ),
                    ),

                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      margin: const EdgeInsets.only(left:100, top: 90),
                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),

                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 50),
                      child:RawMaterialButton(
                        fillColor: Color(0xFF636AF6),
                        padding: const EdgeInsets.fromLTRB(15.75,32.5,15.75,32.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        onPressed: () {},
                        child: const Text ("En savoir\n    plus",
                            style: TextStyle(
                                color:Colors.white,
                                fontSize: 20.0
                            )
                        ),
                      ),
                    ),


                    // Meilleur vente numéro 2:

                    const venteTop2(),
                    const apptop2(),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      margin: const EdgeInsets.only(left:100, top: 200),
                      child: const Text(
                        "Nom du jeu",
                        style: TextStyle(color: Colors.white, fontSize: 15.0,),
                      ),
                    ),

                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      margin: const EdgeInsets.only(left:100, top: 220),
                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),


                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 180),
                      child:RawMaterialButton(
                        fillColor: Color(0xFF636AF6),
                        padding: const EdgeInsets.fromLTRB(15.75,32.5,15.75,32.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        onPressed: () {},
                        child: const Text ("En savoir\n    plus",
                            style: TextStyle(
                                color:Colors.white,
                                fontSize: 20.0
                            )
                        ),
                      ),
                    ),

                    // Meilleur vente numéro 3:

                    const venteTop3(),
                    const apptop3(),

                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      margin: const EdgeInsets.only(left:100, top: 330),
                      child: const Text(
                        "Nom du jeu",
                        style: TextStyle(color: Colors.white, fontSize: 15.0,),
                      ),
                    ),

                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      margin: const EdgeInsets.only(left:100, top: 350),
                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),

                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 310),

                      child:RawMaterialButton(
                        fillColor: Color(0xFF636AF6),
                        padding: const EdgeInsets.fromLTRB(15.75,32.5,15.75,32.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        onPressed: () {},
                        child: const Text ("En savoir\n    plus",
                            style: TextStyle(
                                color:Colors.white,
                                fontSize: 20.0
                            )
                        ),
                      ),
                    ),

                    // Meilleur vente numéro 4:

                    const venteTop4(),
                    const apptop4(),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      margin: const EdgeInsets.only(left:100, top: 460),
                      child: const Text(
                        "Nom du jeu",
                        style: TextStyle(color: Colors.white, fontSize: 15.0,),
                      ),
                    ),

                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      margin: const EdgeInsets.only(left:100, top: 480),
                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),


                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 440),
                      child:RawMaterialButton(
                        fillColor: Color(0xFF636AF6),
                        padding: const EdgeInsets.fromLTRB(15.75,32.5,15.75,32.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        onPressed: () {},
                        child: const Text ("En savoir\n    plus",
                            style: TextStyle(
                                color:Colors.white,
                                fontSize: 20.0
                            )
                        ),
                      ),
                    ),

                    // Meilleur vente numéro 5:

                    const venteTop5(),
                    const apptop5(),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      margin: const EdgeInsets.only(left:100, top: 590),
                      child: const Text(
                        "Nom du jeu",
                        style: TextStyle(color: Colors.white, fontSize: 15.0,),
                      ),
                    ),

                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      margin: const EdgeInsets.only(left:100, top: 610),
                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),

                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 570),
                      child:RawMaterialButton(
                        fillColor: Color(0xFF636AF6),
                        padding: const EdgeInsets.fromLTRB(15.75,32.5,15.75,32.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        onPressed: () {},
                        child: const Text ("En savoir\n    plus",
                            style: TextStyle(
                                color:Colors.white,
                                fontSize: 20.0
                            )
                        ),
                      ),
                    ),
                  ]
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF1A2025),
    );
  }
}

// Afficher la premiere meilleur vente du jeu mis en avant

class venteTop1 extends StatelessWidget{
  const venteTop1({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/fondjeu.png');
    Image image= Image(image: assetImage);
    return Container (
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),),
      //width: 100,
      margin: const EdgeInsets.fromLTRB(7,50,7, 0),
      child: image,
    );
  }
}

// Afficher l'aperçu du Top1

class apptop1 extends StatelessWidget{
  const apptop1({super.key});
  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/logojv.png');
    Image image= Image(image: assetImage);
    return Container (
      margin: const EdgeInsets.fromLTRB(15,60, 7, 0),
      width: 75,
      child: image,
    );
  }
}

// Afficher la seconde meilleur vente du jeu mis en avant

class venteTop2 extends StatelessWidget{
  const venteTop2({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/fondjeu.png');
    Image image= Image(image: assetImage);
    return Container (
      //width: 100,
      margin: const EdgeInsets.fromLTRB(7,180,7,0),
      child: image,
    );
  }
}


// Afficher l'aperçu du Top2

class apptop2 extends StatelessWidget{
  const apptop2({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/logojv.png');
    Image image= Image(image: assetImage);
    return Container (
      margin: const EdgeInsets.fromLTRB(15,190, 7, 0),
      width: 75,
      child: image,
    );
  }
}

// Afficher la troisième meilleur vente du jeu mis en avant

class venteTop3 extends StatelessWidget{
  const venteTop3({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/fondjeu.png');
    Image image= Image(image: assetImage);
    return Container (
      //width: 100,
      margin: const EdgeInsets.fromLTRB(7,310,7,0),
      child: image,
    );
  }
}

// Afficher l'aperçu du Top3

class apptop3 extends StatelessWidget{
  const apptop3({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/logojv.png');
    Image image= Image(image: assetImage);
    return Container (
      margin: const EdgeInsets.fromLTRB(15,320, 7, 0),
      width: 75,
      child: image,
    );
  }
}

// Afficher la quatrième meilleur vente du jeu mis en avant

class venteTop4 extends StatelessWidget{
  const venteTop4({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/fondjeu.png');
    Image image= Image(image: assetImage);
    return Container (
      //width: 100,
      margin: const EdgeInsets.fromLTRB(7,440,7,0),
      child: image,
    );
  }
}

// Afficher l'aperçu du Top4

class apptop4 extends StatelessWidget{
  const apptop4({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/logojv.png');
    Image image= Image(image: assetImage);
    return Container (
      margin: const EdgeInsets.fromLTRB(15,450, 7, 0),
      width: 75,
      child: image,
    );
  }
}

// Afficher la cinquième meilleur vente du jeu mis en avant

class venteTop5 extends StatelessWidget{
  const venteTop5({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/fondjeu.png');
    Image image= Image(image: assetImage);
    return Container (
      //width: 100,
      margin: const EdgeInsets.fromLTRB(7,570,7,0),
      child: image,
    );
  }
}

// Afficher l'aperçu du Top5
class apptop5 extends StatelessWidget{
  const apptop5({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/logojv.png');
    Image image= Image(image: assetImage);
    return Container (
      margin: const EdgeInsets.fromLTRB(15,580, 7, 0),
      width: 75,
      child: image,
    );
  }
}