import 'package:flutter/material.dart';
import 'package:cricket_team_players/screens/player_details_screen.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({
    super.key,
    required this.name,
    required this.age,
    required this.role,
    required this.image,
  });

  final String name, age, role, image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/profiles/$image'),
        ),
        title: Text(name),
        subtitle: Text(age),
        trailing: Text(role, style: const TextStyle(fontSize: 14)),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: ((context) {
              return PlayerDetailsScreen(name, age, role, image);
            })),
          );
        },
      ),
    );
  }
}
