import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'details_screen.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super (key : key);
  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  int _rating = 0;
  int _rating2=0;

  void rate(int rating) {
    //Other actions based on rating such as api calls.
    setState(() {
      _rating = rating;
    });
  }
  void rate2(int rating2) {
    //Other actions based on rating such as api calls.
    setState(() {
      _rating2 = rating2;
    });
  }

  @override

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A2025),
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg',),
          onPressed: () {}, ),
        title: Text(" Détail du jeu", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
        titleSpacing: -15,
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/like.svg',),
            onPressed: () {  }, ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/whishlist.svg',),
            onPressed: () {  }, ),
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
                      color: Color(0xFF1A2025),
                    ),
                  ),
                ),

                Positioned(
                  top: 420,
                  left: 10,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color: Color(0xFF636AF6)),
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                    ),
                    child: Text("DESCRIPTION",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                            fontSize: 16.0)
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailsPage()),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 420,
                  left: 198,
                  child: RawMaterialButton(
                    fillColor: Color(0xFF636AF6),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    onPressed: () {},
                    child: Text('AVIS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                            fontSize: 16.0)),
                  ),
                ),

                Positioned(
                  top: 490,
                  left: 10,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        height: width - 300,
                        width: width - 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color:Color(0xFF1E262C),
                        ),
                        child: Text("Nom de l'utilisateur",
                            style: TextStyle(
                                color:Colors.white,
                                fontSize: 16.0,
                                decoration: TextDecoration.underline)
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  top: 510,
                  left: 280,
                  child: new Container(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating >= 1 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () => rate(1),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating >= 2 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () => rate(2),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating >= 3 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () => rate(3),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating >= 4 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () => rate(4),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating >= 5 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () => rate(5),
                        )
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 640,
                  left: 10,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        height: width - 300,
                        width: width - 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:Color(0xFF1E262C),
                        ),
                        child: Text("Nom de l'utilisateur",
                            style: TextStyle(
                                color:Colors.white,
                                fontSize: 16.0,
                                decoration: TextDecoration.underline)
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  top: 660,
                  left: 280,
                  child: new Container(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating2 >= 1 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () => rate2(1),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating2 >= 2 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () => rate2(2),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating2 >= 3 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () => rate2(3),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating2 >= 4 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () => rate2(4),
                        ),
                        new GestureDetector(
                          child: new Icon(
                            Icons.star,
                            color: _rating2 >= 5 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () => rate2(5),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 270,
                  left: 20,
                  right: 20,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 105, top: 50),
                        height: width - 300,
                        width: width - 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/battlefield_fond.png"),fit: BoxFit.cover)
                        ),
                        child: Text("Nom du jeu \nNom de l'éditeur",
                            style: TextStyle(
                                color:Colors.white,
                                fontSize: 16.0,
                        ),
                      ),
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