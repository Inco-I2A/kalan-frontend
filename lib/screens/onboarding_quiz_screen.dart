import 'package:flutter/material.dart';
import '../theme.dart';

class OnboardingQuizScreen extends StatefulWidget {
  const OnboardingQuizScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingQuizScreen> createState() => _OnboardingQuizScreenState();
}

class _OnboardingQuizScreenState extends State<OnboardingQuizScreen> {
  int _currentQuestionIndex = 0;
  String? _selectedOption;

  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'Quel est ton niveau d\'études ?',
      'options': ['Primaire', 'Collège', 'Lycée', 'Université'],
      'icon': Icons.school,
    },
    {
      'question': 'Combien de temps souhaites-tu réviser par jour ?',
      'options': ['5-10 min', '15-30 min', '30-60 min', 'Plus d\'une heure'],
      'icon': Icons.timer,
    },
    {
      'question': 'Quelle est ta matière préférée ?',
      'options': ['Mathématiques', 'Français', 'Histoire-Géo', 'Sciences'],
      'icon': Icons.favorite,
    },
  ];

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _selectedOption = null;
      });
    } else {
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = _questions[_currentQuestionIndex];
    final progress = (_currentQuestionIndex + 1) / _questions.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Personnalisation'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: AppColors.surfaceContainerHigh,
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(question['icon'] as IconData, size: 40, color: AppColors.primary),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              question['question'] as String,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: AppColors.onSurface,
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: ListView.builder(
                itemCount: (question['options'] as List).length,
                itemBuilder: (context, index) {
                  final option = (question['options'] as List)[index] as String;
                  final isSelected = _selectedOption == option;
                  return _buildOption(option, isSelected);
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: _selectedOption != null ? _nextQuestion : null,
                child: Text(_currentQuestionIndex < _questions.length - 1 ? 'Suivant' : 'Terminer'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String text, bool isSelected) {
    return GestureDetector(
      onTap: () => setState(() => _selectedOption = text),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary.withOpacity(0.05) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.outlineVariant,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? AppColors.primary : AppColors.onSurface,
              ),
            ),
            if (isSelected)
              const Icon(Icons.check_circle, color: AppColors.primary),
          ],
        ),
      ),
    );
  }
}
