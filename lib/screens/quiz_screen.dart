import 'package:flutter/material.dart';
import '../theme.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  String? _selectedOption;
  bool _isAnswered = false;

  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'Quel est le résultat de 3/4 + 1/2 ?',
      'options': ['4/6', '5/4', '1', '7/4'],
      'correctAnswer': '5/4',
    },
    {
      'question': 'Quelle est la capitale de la France ?',
      'options': ['Lyon', 'Marseille', 'Paris', 'Bordeaux'],
      'correctAnswer': 'Paris',
    },
  ];

  void _checkAnswer() {
    setState(() {
      _isAnswered = true;
    });
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _selectedOption = null;
        _isAnswered = false;
      });
    } else {
      Navigator.pushReplacementNamed(context, '/results');
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = _questions[_currentQuestionIndex];
    final progress = (_currentQuestionIndex + 1) / _questions.length;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          children: [
            const Text('Quiz Challenge', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 4),
            SizedBox(
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9999),
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 4,
                  backgroundColor: AppColors.surfaceContainerHigh,
                  valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                question['question'] as String,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.4,
                ),
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: ListView.builder(
                itemCount: (question['options'] as List).length,
                itemBuilder: (context, index) {
                  final option = (question['options'] as List)[index] as String;
                  return _buildOption(option, question['correctAnswer'] as String);
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: _selectedOption != null ? (_isAnswered ? _nextQuestion : _checkAnswer) : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isAnswered ? AppColors.primary : AppColors.primaryContainer,
                ),
                child: Text(_isAnswered 
                  ? (_currentQuestionIndex < _questions.length - 1 ? 'Suivant' : 'Voir les résultats') 
                  : 'Vérifier'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String text, String correctAnswer) {
    final isSelected = _selectedOption == text;
    final isCorrect = text == correctAnswer;
    
    Color borderColor = AppColors.outlineVariant;
    Color bgColor = Colors.white;
    Widget? icon;

    if (_isAnswered) {
      if (isCorrect) {
        borderColor = Colors.green;
        bgColor = Colors.green.withOpacity(0.05);
        icon = const Icon(Icons.check_circle, color: Colors.green);
      } else if (isSelected) {
        borderColor = Colors.red;
        bgColor = Colors.red.withOpacity(0.05);
        icon = const Icon(Icons.cancel, color: Colors.red);
      }
    } else if (isSelected) {
      borderColor = AppColors.primary;
      bgColor = AppColors.primary.withOpacity(0.05);
    }

    return GestureDetector(
      onTap: _isAnswered ? null : () => setState(() => _selectedOption = text),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: borderColor,
            width: isSelected || (_isAnswered && isCorrect) ? 2 : 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected || (_isAnswered && isCorrect) ? FontWeight.bold : FontWeight.normal,
                color: _isAnswered && isCorrect ? Colors.green : (_isAnswered && isSelected ? Colors.red : AppColors.onSurface),
              ),
            ),
            if (icon != null) icon,
          ],
        ),
      ),
    );
  }
}
