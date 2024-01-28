import 'package:flutter/material.dart';

class PlayerDetailsScreen extends StatelessWidget {
  const PlayerDetailsScreen(
    this.name,
    this.age,
    this.role,
    this.image, {
    super.key,
  });

  final String name, age, role, image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          "Player Details",
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/profiles/$image'),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 48),
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.lightGreenAccent,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Text(
                    role,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    age,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
