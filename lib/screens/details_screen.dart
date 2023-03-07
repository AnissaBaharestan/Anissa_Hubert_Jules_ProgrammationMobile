import 'package:flutter/material.dart';
import 'indetails_screen.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super (key : key);
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E262C),
        leading: BackButton(),
          title: Text("Détails du jeu", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          titleSpacing: -15,
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.favorite_border)),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.star_border)),
          ],
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            child: Stack(
              children: [
                Container(
                  height: 340,
                  width: width,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/details_fond.png"),fit: BoxFit.cover)
                  ),
                ),
                Positioned(
                  top:340,
                  child: Container(
                    height: 580,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Color(0xFF1E262C),
                    ),
                  ),
                ),

                Positioned(
                  top: 420,
                  left: 10,
                  child: RawMaterialButton(
                    fillColor: Color(0xFF636AF6),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    onPressed: () {},
                    child: Text('DESCRIPTION',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                            fontSize: 16.0)),
                  ),
                  ),
                Positioned(
                  top: 420,
                  left: 200,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color: Color(0xFF636AF6)),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                    ),
                    child: Text("AVIS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            color:Colors.white,
                            fontSize: 16.0)
                    ),
                    onPressed: () {},
                  ),
                  ),

                Positioned(
                  top: 490,
                  left: 10,
                    child: Text("Bacon ipsum dolor amet rump doner brisket corned \nbeef tri-tip. Burgdoggen t-bone leberkas, tri-tip \nbacon beef ribs corned beef meatball andouille\nfatback alcatra strip steak turkey kevin. Short loin\nandouille cupim boudin, hamburger burgdoggen\nfatback. Chislic porchetta boudin swine filet mignon\ntongue t-bone pancetta cupim buffalo chicken\nribeye landjaeger. Sausage salami tongue,\nburgdoggen hamburger pork chop fatback tri-tip t-\nbone meatloaf alcatra. Boudin pastrami pork belly,\nstrip steak sirloin cow hamburger beef venison\n alcatra drumstick.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 17.0),
                    ),
                  ),


                Positioned(
                  top: 270,
                    left: 20,
                    right: 20,
                    child: Column(
                      children: [
                        Container(
                         padding: const EdgeInsets.only(left: 20, top: 50),
                          height: width - 300,
                          width: width - 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/battlefield_fond.png"),fit: BoxFit.cover)
                          ),
                          child: const InDetailsPage(),
                        ),
                      ],
                    ),
                ),

                Positioned(
                  top: 290,
                  left: 35,
                  child: Container(
                    height: 100,
                    width: 78,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/battlefield.png"),fit: BoxFit.cover)
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}