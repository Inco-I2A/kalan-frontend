import 'package:flutter/material.dart';
import 'screens/screens.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KALAN App',
      theme: AppTheme.lightTheme,
      initialRoute: '/onboarding',
      routes: {
        '/connexion': (context) => const ConnexionScreen(),
        '/inscription': (context) => const InscriptionScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/onboarding_quiz': (context) => const OnboardingQuizScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/capture_document': (context) => const CaptureDocumentScreen(),
        '/flashcards_list': (context) => const FlashcardsListScreen(),
        '/revision_mode': (context) => const RevisionModeScreen(),
        '/quiz': (context) => const QuizScreen(),
        '/results': (context) => const ResultsScreen(),
        '/bluetooth_share': (context) => const BluetoothShareScreen(),
        '/leaderboard': (context) => const LeaderboardScreen(),
        '/profile_stats': (context) => const ProfileStatsScreen(),
        '/public_library': (context) => const PublicLibraryScreen(),
        '/flashcards_generation': (context) =>
            const FlashcardsGenerationScreen(),
        '/history': (context) => const HistoryScreen(),
        '/recommendations': (context) => const RecommendationsScreen(),
      },
    );
  }
}
