import 'package:flutter/material.dart';
import '../theme.dart';

class RecommendationsScreen extends StatelessWidget {
  const RecommendationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recommendations = [
      {'title': 'Algèbre Linéaire', 'desc': 'Maîtrise les bases du calcul matriciel.', 'icon': Icons.calculate, 'color': Colors.blue},
      {'title': 'Grammaire Avancée', 'desc': 'Perfectionne ton orthographe.', 'icon': Icons.menu_book, 'color': Colors.pink},
      {'title': 'Histoire Moderne', 'desc': 'Comprends les enjeux du XXème siècle.', 'icon': Icons.history, 'color': Colors.amber},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommandations'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: recommendations.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final item = recommendations[index];
          final color = item['color'] as Color;
          return Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppColors.surfaceContainerHigh),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(item['icon'] as IconData, color: color),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['title'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(height: 4),
                      Text(item['desc'] as String, style: const TextStyle(fontSize: 13, color: AppColors.onSurfaceVariant)),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline, color: AppColors.primary),
                  onPressed: () {},
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
