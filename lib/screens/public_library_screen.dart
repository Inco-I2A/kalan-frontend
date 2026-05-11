import 'package:flutter/material.dart';
import '../theme.dart';

class PublicLibraryScreen extends StatelessWidget {
  const PublicLibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final publicDecks = [
      {'title': 'Vocabulaire Anglais B2', 'author': 'Teacher Sarah', 'likes': 1200, 'cards': 150},
      {'title': 'Formules Physiques', 'author': 'Dr. Traoré', 'likes': 850, 'cards': 45},
      {'title': 'Histoire du Mali', 'author': 'Alpha', 'likes': 2100, 'cards': 80},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bibliothèque Publique'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader(context, 'Populaires en ce moment', '/recommendations'),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: publicDecks.length,
                itemBuilder: (context, index) {
                  final deck = publicDecks[index];
                  return _buildFeaturedCard(deck);
                },
              ),
            ),
            const SizedBox(height: 32),
            _buildSectionHeader(context, 'Mon Historique', '/history'),
            const SizedBox(height: 16),
            _buildCategoryGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title, String route) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, route),
          child: const Text('Voir tout', style: TextStyle(color: AppColors.primary, fontSize: 12)),
        ),
      ],
    );
  }

  Widget _buildFeaturedCard(Map<String, dynamic> deck) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primaryContainer,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.auto_stories, color: Colors.white, size: 32),
          const Spacer(),
          Text(
            deck['title'] as String,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            '${deck['cards']} cartes',
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.favorite, color: Colors.white, size: 14),
              const SizedBox(width: 4),
              Text(
                '${deck['likes']}',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryGrid() {
    final categories = ['Langues', 'Sciences', 'Histoire', 'Art', 'Tech', 'Droit'];
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 2.5,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.surfaceContainerHigh),
          ),
          child: Center(
            child: Text(
              categories[index],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}
