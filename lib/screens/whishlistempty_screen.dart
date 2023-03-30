// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WishlistEmptyPage extends StatefulWidget {
  const WishlistEmptyPage({Key? key}) : super(key: key);
  @override
  State<WishlistEmptyPage> createState() => _WishlistEmptyPageState();
}

class _WishlistEmptyPageState extends State<WishlistEmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ma liste de souhaits", textAlign: TextAlign.left,),
        backgroundColor: const Color(0xFF1A2025),
        leading: IconButton(
            icon: SvgPicture.asset('assets/icons/close.svg',),
            onPressed: () {}
        ),
      ),
      backgroundColor: const Color(0xFF1A2025),
    );
  }
}