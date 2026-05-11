import 'package:flutter/material.dart';
import '../theme.dart';

class FlashcardsListScreen extends StatelessWidget {
  const FlashcardsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final decks = [
      {'title': 'Les Fractions', 'subject': 'Mathématiques', 'count': 24, 'mastery': 0.6, 'color': Colors.indigo},
      {'title': 'Passé Composé', 'subject': 'Français', 'count': 15, 'mastery': 0.8, 'color': Colors.pink},
      {'title': 'La Révolution Française', 'subject': 'Histoire', 'count': 42, 'mastery': 0.3, 'color': Colors.amber},
      {'title': 'La Photosynthèse', 'subject': 'SVT', 'count': 18, 'mastery': 0.5, 'color': Colors.teal},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes Flashcards'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          _buildFilterChips(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: decks.length,
              itemBuilder: (context, index) {
                final deck = decks[index];
                return _buildDeckCard(context, deck);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/capture_document'),
        label: const Text('Nouveau Deck'),
        icon: const Icon(Icons.add_a_photo),
        backgroundColor: AppColors.primaryContainer,
      ),
    );
  }

  Widget _buildFilterChips() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          _buildChip('Tous', true),
          _buildChip('Révisions du jour', false),
          _buildChip('Nouveaux', false),
          _buildChip('Maîtrisés', false),
        ],
      ),
    );
  }

  Widget _buildChip(String label, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (val) {},
        backgroundColor: AppColors.surfaceContainerLow,
        selectedColor: AppColors.primaryFixed,
        labelStyle: TextStyle(
          color: isSelected ? AppColors.onPrimaryFixed : AppColors.onSurfaceVariant,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999)),
      ),
    );
  }

  Widget _buildDeckCard(BuildContext context, Map<String, dynamic> deck) {
    final color = deck['color'] as Color;
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/revision_mode'),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.surfaceContainerHigh),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.style, color: color),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        deck['title'],
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        '${deck['subject']} • ${deck['count']} cartes',
                        style: const TextStyle(color: AppColors.onSurfaceVariant, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right, color: AppColors.outline),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9999),
                    child: LinearProgressIndicator(
                      value: deck['mastery'],
                      minHeight: 6,
                      backgroundColor: AppColors.surfaceContainerLow,
                      valueColor: AlwaysStoppedAnimation<Color>(color),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  '${(deck['mastery'] * 100).toInt()}%',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
