import 'package:flutter/material.dart';
import '../theme.dart';

class FlashcardsGenerationScreen extends StatefulWidget {
  const FlashcardsGenerationScreen({Key? key}) : super(key: key);

  @override
  State<FlashcardsGenerationScreen> createState() => _FlashcardsGenerationScreenState();
}

class _FlashcardsGenerationScreenState extends State<FlashcardsGenerationScreen> {
  bool _isGenerating = true;

  @override
  void initState() {
    super.initState();
    // Simulate generation process
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        setState(() {
          _isGenerating = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: _isGenerating ? _buildLoadingState() : _buildSuccessState(),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingState() {
    return Column(
      key: const ValueKey('loading'),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 80,
          height: 80,
          child: CircularProgressIndicator(
            strokeWidth: 8,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
        ),
        const SizedBox(height: 48),
        const Text(
          'Génération par l\'IA...',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 16),
        const Text(
          'KALAN analyse ton document pour créer les meilleures flashcards possibles.',
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.onSurfaceVariant),
        ),
      ],
    );
  }

  Widget _buildSuccessState() {
    return Column(
      key: const ValueKey('success'),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.check_circle, size: 80, color: Colors.green),
        ),
        const SizedBox(height: 48),
        const Text(
          'C\'est prêt !',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 16),
        const Text(
          '12 nouvelles flashcards ont été générées avec succès.',
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.onSurfaceVariant),
        ),
        const SizedBox(height: 48),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: () => Navigator.pushReplacementNamed(context, '/flashcards_list'),
            child: const Text('Voir mes cartes'),
          ),
        ),
      ],
    );
  }
}
