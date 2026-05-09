import 'package:flutter/material.dart';

class PlaceholderScreen extends StatelessWidget {
  final String title;

  const PlaceholderScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Navigation',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Connexion'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/connexion'),
            ),
            ListTile(
              title: const Text('Inscription'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/inscription'),
            ),
            ListTile(
              title: const Text('1. Onboarding'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/onboarding'),
            ),
            ListTile(
              title: const Text('1.2 Onboarding - Quiz'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/onboarding_quiz'),
            ),
            ListTile(
              title: const Text('2. Tableau de Bord'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/dashboard'),
            ),
            ListTile(
              title: const Text('3. Capture Document'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/capture_document'),
            ),
            ListTile(
              title: const Text('4. Liste Flashcards'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/flashcards_list'),
            ),
            ListTile(
              title: const Text('5. Mode Révision'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/revision_mode'),
            ),
            ListTile(
              title: const Text('6. Quiz / QCM'),
              onTap: () => Navigator.pushReplacementNamed(context, '/quiz'),
            ),
            ListTile(
              title: const Text('7. Résultats'),
              onTap: () => Navigator.pushReplacementNamed(context, '/results'),
            ),
            ListTile(
              title: const Text('8. Partage Bluetooth'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/bluetooth_share'),
            ),
            ListTile(
              title: const Text('9. Classement'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/leaderboard'),
            ),
            ListTile(
              title: const Text('10. Profil & Stats'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/profile_stats'),
            ),
            ListTile(
              title: const Text('11. Bibliothèque Publique'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/public_library'),
            ),
            ListTile(
              title: const Text('Génération Flashcards'),
              onTap: () => Navigator.pushReplacementNamed(
                context,
                '/flashcards_generation',
              ),
            ),
            ListTile(
              title: const Text('Mon Historique'),
              onTap: () => Navigator.pushReplacementNamed(context, '/history'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Screen: $title\n(Placeholder)',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class InscriptionScreen extends StatelessWidget {
  const InscriptionScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: 'Inscription');
}

class ConnexionScreen extends StatelessWidget {
  const ConnexionScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: 'Connexion');
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '1. Onboarding');
}

class OnboardingQuizScreen extends StatelessWidget {
  const OnboardingQuizScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '1.2 Onboarding - Quiz');
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '2. Tableau de Bord');
}

class CaptureDocumentScreen extends StatelessWidget {
  const CaptureDocumentScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '3. Capture Document');
}

class FlashcardsListScreen extends StatelessWidget {
  const FlashcardsListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '4. Liste Flashcards');
}

class RevisionModeScreen extends StatelessWidget {
  const RevisionModeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '5. Mode Révision');
}

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '6. Quiz / QCM');
}

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '7. Résultats');
}

class BluetoothShareScreen extends StatelessWidget {
  const BluetoothShareScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '8. Partage Bluetooth');
}

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '9. Classement');
}

class ProfileStatsScreen extends StatelessWidget {
  const ProfileStatsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '10. Profil & Stats');
}

class PublicLibraryScreen extends StatelessWidget {
  const PublicLibraryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: '11. Bibliothèque Publique');
}

class FlashcardsGenerationScreen extends StatelessWidget {
  const FlashcardsGenerationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: 'Génération des Flashcards');
}

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      const PlaceholderScreen(title: 'Mon Historique');
}
