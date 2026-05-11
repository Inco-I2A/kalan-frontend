import 'package:flutter/material.dart';
import '../theme.dart';

class ProfileStatsScreen extends StatelessWidget {
  const ProfileStatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil & Statistiques'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // User Profile Header
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/aida-public/AB6AXuCRdZB5cxX8-B5SnIB84QKDtFBjc_KHM5tfQd0lMuRxoDuWYK1ntCI_DdQ5ySaoHPbnuV-kvoTqiiyaiTLJsjd2cGczD-qSnDok63PxLXoSdk7J4vugCZFT4CfnxMb27wvaCvenRuVA01gfOtoqp6LDx5Exl9A02nXrwAOfsA7eR-WFKgQ9SgCT2jjlVhACeSftNjeG1_GbsBrKIbAKGhUSd91aNQdS7fpIRvOATDFit7zFjAgDq3e7R-rpscoYOfEX30xidWi697I'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Kouda',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            const Text(
              'Apprenti Maître • Niv. 12',
              style: TextStyle(color: AppColors.onSurfaceVariant, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),

            // Main Stats Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildProfileStat('Cards', '1,240', Icons.style, Colors.blue),
                _buildProfileStat('Streak', '5j', Icons.local_fire_department, Colors.orange),
                _buildProfileStat('Points', '2,320', Icons.bolt, Colors.amber),
              ],
            ),
            const SizedBox(height: 32),

            // Performance Chart Placeholder
            _buildSectionHeader('Maîtrise par matière'),
            const SizedBox(height: 16),
            _buildMasteryList(),

            const SizedBox(height: 32),
            _buildSectionHeader('Badges récents'),
            const SizedBox(height: 16),
            _buildBadgesGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileStat(String label, String value, IconData icon, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color),
        ),
        const SizedBox(height: 8),
        Text(value, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
        Text(label, style: const TextStyle(fontSize: 12, color: AppColors.onSurfaceVariant)),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const Text('Voir tout', style: TextStyle(color: AppColors.primary, fontSize: 12)),
      ],
    );
  }

  Widget _buildMasteryList() {
    final mastery = [
      {'subject': 'Mathématiques', 'progress': 0.75, 'color': Colors.indigo},
      {'subject': 'Français', 'progress': 0.90, 'color': Colors.pink},
      {'subject': 'Histoire-Géo', 'progress': 0.45, 'color': Colors.amber},
    ];

    return Column(
      children: mastery.map((m) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(m['subject'] as String, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text('${((m['progress'] as double) * 100).toInt()}%'),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(9999),
              child: LinearProgressIndicator(
                value: m['progress'] as double,
                minHeight: 8,
                backgroundColor: AppColors.surfaceContainerHigh,
                valueColor: AlwaysStoppedAnimation<Color>(m['color'] as Color),
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildBadgesGrid() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: List.generate(4, (index) => Container(
        decoration: BoxDecoration(
          color: AppColors.surfaceContainerLow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          [Icons.auto_stories, Icons.bolt, Icons.timer, Icons.emoji_events][index],
          color: AppColors.primaryContainer,
        ),
      )),
    );
  }
}
