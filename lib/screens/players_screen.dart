import 'package:flutter/material.dart';
import 'package:cricket_team_players/widgets/player_card.dart';
import 'package:cricket_team_players/data/data_store.dart';

class PlayersScreen extends StatelessWidget {
  const PlayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          "Pakistan's Cricket Team Players",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: playersList.length,
            itemBuilder: (context, index) {
              return PlayerCard(
                name: playersList[index].name,
                age: playersList[index].age,
                role: playersList[index].role,
                image: playersList[index].image,
              );
            }),
      ),
    );
  }
}
