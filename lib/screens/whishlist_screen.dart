import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ma liste de souhaits"),
        backgroundColor: const Color(0xFF1A2025),
        leading: IconButton(
            icon:  SvgPicture.asset('assets/icons/close.svg',),
            onPressed: () {}
        ),
      ),

      body: Container (
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                  children:   <Widget>[

                    // Meilleur vente numéro 1:

                    const venteTop1(),
                    const apptop1(),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),

                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      margin: const EdgeInsets.only(left:100, top: 50),

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
                      margin: const EdgeInsets.only(left:100, top: 70),

                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),

                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 20),

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
                      margin: const EdgeInsets.only(left:100, top: 175),

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
                      margin: const EdgeInsets.only(left:100, top: 195),

                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),

                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 145),

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
                      margin: const EdgeInsets.only(left:100, top: 300),

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
                      margin: const EdgeInsets.only(left:100, top: 320),

                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),

                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 270),

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
                      margin: const EdgeInsets.only(left:100, top: 425),

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
                      margin: const EdgeInsets.only(left:100, top: 445),

                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),

                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 395),

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
                      margin: const EdgeInsets.only(left:100, top: 550),

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
                      margin: const EdgeInsets.only(left:100, top: 570),

                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),

                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 520),

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
      margin: const EdgeInsets.fromLTRB(7,20,7, 0),
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
      margin: const EdgeInsets.fromLTRB(15,30, 7, 0),
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
      margin: const EdgeInsets.fromLTRB(7,145,7,0),
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
      margin: const EdgeInsets.fromLTRB(15,155, 7, 0),
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
      margin: const EdgeInsets.fromLTRB(7,270,7,0),
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
      margin: const EdgeInsets.fromLTRB(15,280, 7, 0),
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
      margin: const EdgeInsets.fromLTRB(7,395,7,0),
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
      margin: const EdgeInsets.fromLTRB(15,405, 7, 0),
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
      margin: const EdgeInsets.fromLTRB(7,520,7,0),
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
      margin: const EdgeInsets.fromLTRB(15,530, 7, 0),
      width: 75,
      child: image,
    );
  }
}
