import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikeEmptyPage extends StatefulWidget {
  const LikeEmptyPage({Key? key}) : super(key: key);

  @override
  State<LikeEmptyPage> createState() => _LikeEmptyPageState();
}

class _LikeEmptyPageState extends State<LikeEmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes likes"),
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