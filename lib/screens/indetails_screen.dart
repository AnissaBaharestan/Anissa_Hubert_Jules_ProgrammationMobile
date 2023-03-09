import 'package:flutter/material.dart';

class InViewPage extends StatefulWidget {
  const InViewPage({Key? key}) : super (key : key);
  @override
  State<InViewPage> createState() => _InViewPageState();
}

class _InViewPageState extends State<InViewPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 95.0,),
        detailsTextGame(context),
      ],
    );
  }
  Widget detailsTextGame(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Nom du jeu",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10,),
        IntrinsicHeight(
          child: Row(
            children: [
              const Text(
                "Nom de l'éditeur",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}


