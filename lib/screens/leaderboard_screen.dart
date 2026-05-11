import 'package:flutter/material.dart';
import '../theme.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final players = [
      {'name': 'Amadou', 'score': 2450, 'rank': 1, 'isMe': false},
      {'name': 'Kouda', 'score': 2320, 'rank': 2, 'isMe': true},
      {'name': 'Fatou', 'score': 2100, 'rank': 3, 'isMe': false},
      {'name': 'Moussa', 'score': 1950, 'rank': 4, 'isMe': false},
      {'name': 'Awa', 'score': 1800, 'rank': 5, 'isMe': false},
      {'name': 'Ibrahim', 'score': 1750, 'rank': 6, 'isMe': false},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Classement Général'),
        elevation: 0,
      ),
      body: Column(
        children: [
          _buildPodium(players.take(3).toList()),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                itemCount: players.length - 3,
                separatorBuilder: (context, index) => const Divider(height: 32),
                itemBuilder: (context, index) {
                  final player = players[index + 3];
                  return _buildListTile(player);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPodium(List<Map<String, dynamic>> topPlayers) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      height: 240,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildPodiumPlace(topPlayers[2], 120, Colors.amber.shade300),
          _buildPodiumPlace(topPlayers[0], 160, Colors.amber),
          _buildPodiumPlace(topPlayers[1], 140, Colors.amber.shade100),
        ],
      ),
    );
  }

  Widget _buildPodiumPlace(Map<String, dynamic> player, double height, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.primaryContainer,
          child: Text(player['name'][0], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 8),
        Text(player['name'], style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Container(
          width: 80,
          height: height,
          decoration: BoxDecoration(
            color: color.withOpacity(0.3),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '#${player['rank']}',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: Colors.orange),
              ),
              Text(
                '${player['score']}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildListTile(Map<String, dynamic> player) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          child: Text(
            '${player['rank']}',
            style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.outline),
          ),
        ),
        const CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.surfaceContainerHigh,
          child: Icon(Icons.person, color: AppColors.outline),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            player['name'],
            style: TextStyle(
              fontWeight: player['isMe'] ? FontWeight.w900 : FontWeight.bold,
              color: player['isMe'] ? AppColors.primary : AppColors.onSurface,
            ),
          ),
        ),
        Text(
          '${player['score']} pts',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
