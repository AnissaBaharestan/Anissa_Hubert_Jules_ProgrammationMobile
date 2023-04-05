//  Affiche le nom du jeu depuis l'API

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class SteamGame1 extends StatefulWidget {
  @override
  _SteamGame1State createState() => _SteamGame1State();
}

class _SteamGame1State extends State<SteamGame1> {
  String _gameName = '';
  String _description = '';

  Future<void> _fetchGameName() async {
    var _appidgame = 730;
    final response = await http.get(Uri.parse('https://store.steampowered.com/api/appdetails?appids=$_appidgame'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _gameName = data['730']['data']['name'];
        _description = data ['730']['data']['detailed_description'];
      });
    } else {
      throw Exception('Failed to fetch game name');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchGameName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Steam Appdetails'),
      ),
      body:       Text( 'Game Name: $_gameName',
        //'Description: $_description',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}