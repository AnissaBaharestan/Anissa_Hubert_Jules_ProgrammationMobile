import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:private/screens/search_screen.dart';


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
                                  iconSize: 30,
                                  onPressed: ( ) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const SearchPage()),
                                    );
                                  },
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
                    const Ecranfond(),
                    const afflogojv(),

                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
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
                        // color: Colors.black,
                      ),

                      padding: const EdgeInsets.fromLTRB(0,11.5, 11.5, 11.5),
                      margin: const EdgeInsets.only(left:15, top: 100),

                      child: const Text(
                        "Une description d'un jeu mis en avant\n(peut être coder en dur)",
                        style: TextStyle(color: Colors.white, fontSize: 13.0,),
                      ),
                    ),

                    //const SizedBox(height: 88.0,),
                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: EdgeInsets.only(left:15, top:155),

                      child:RawMaterialButton(
                        fillColor: Color(0xFF636AF6),
                        padding: EdgeInsets.fromLTRB(35,10, 35, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        onPressed: () {},

                        child: const Text("En savoir plus",
                            style: TextStyle(
                              color:Colors.white,
                              fontSize: 17.0
                            )
                        ),
                      ),
                    ),



                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.fromLTRB(0,11.5, 11.5, 11.5),
                      margin: const EdgeInsets.only(left:15, top: 250),
                      child: const Text(
                        "Les meilleurs ventes",
                        style: TextStyle(color: Colors.white, fontSize: 17.0,decoration: TextDecoration.underline,),
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
                      margin: const EdgeInsets.only(left:100, top: 320),
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
                      margin: const EdgeInsets.only(left:100, top: 340),
                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),


                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 300),
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
                      margin: const EdgeInsets.only(left:100, top: 450),
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
                      margin: const EdgeInsets.only(left:100, top: 470),

                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),


                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top:430 ),

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
                      margin: const EdgeInsets.only(left:100, top: 580),

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
                      margin: const EdgeInsets.only(left:100, top: 600),

                      child: const Text(
                        "Nom de l'éditeur\n \nPrix: 10,00 €",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,),
                      ),
                    ),


                    Container(
                      //margin: const EdgeInsets.all(70),
                      margin: const EdgeInsets.only(left:305, top: 560),

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

// Affichage de la photo d'acceuil

class Ecranfond extends StatelessWidget{
  const Ecranfond({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/Fondaccueil.png');
    Image image= Image(image: assetImage);
    return SizedBox (width: 2000,child: image, );
  }
}


// Afficher l'aperçu du jeu mis en avant

class afflogojv extends StatelessWidget{
  const afflogojv({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/logojv.png');
    Image image= Image(image: assetImage);
    return Container (
      margin: const EdgeInsets.fromLTRB(305,60, 11.5, 8),
      child: image,
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
      margin: const EdgeInsets.fromLTRB(7,300,7, 0),


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
      margin: const EdgeInsets.fromLTRB(15,310, 7, 0),
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
      margin: const EdgeInsets.fromLTRB(7,430,7,0),
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
      margin: const EdgeInsets.fromLTRB(15,440, 7, 0),
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
      margin: const EdgeInsets.fromLTRB(7,560,7,0),

      child: image,
    );
  }
}

// Afficher l'aperçu du Top3  // A retravailler pour éviter le hors zones

class apptop3 extends StatelessWidget{
  const apptop3({super.key});

  @override
  Widget build (BuildContext context) {
    AssetImage assetImage= const AssetImage('assets/images/logojv.png');
    Image image= Image(image: assetImage);
    return Container (
      margin: const EdgeInsets.fromLTRB(15,570, 7, 0),
      width: 75,
      child: image,
    );
  }
}