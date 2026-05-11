import 'package:flutter/material.dart';
import '../theme.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final history = [
      {'title': 'Quiz: Fractions', 'date': 'Aujourd\'hui, 14:30', 'score': '18/20', 'icon': Icons.quiz},
      {'title': 'Révision: Passé Composé', 'date': 'Hier, 10:15', 'score': '95%', 'icon': Icons.style},
      {'title': 'Scan: Histoire Chap. 3', 'date': '8 Mai, 16:40', 'score': '12 cartes', 'icon': Icons.center_focus_strong},
      {'title': 'Quiz: SVT', 'date': '7 Mai, 09:20', 'score': '15/20', 'icon': Icons.quiz},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Historique'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: history.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final item = history[index];
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.surfaceContainerHigh),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(item['icon'] as IconData, color: AppColors.primary),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['title'] as String, style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(item['date'] as String, style: const TextStyle(fontSize: 12, color: AppColors.onSurfaceVariant)),
                    ],
                  ),
                ),
                Text(
                  item['score'] as String,
                  style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.primary),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
