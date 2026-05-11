import 'package:flutter/material.dart';
import '../theme.dart';
import 'dart:math';

class RevisionModeScreen extends StatefulWidget {
  const RevisionModeScreen({Key? key}) : super(key: key);

  @override
  State<RevisionModeScreen> createState() => _RevisionModeScreenState();
}

class _RevisionModeScreenState extends State<RevisionModeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isFront = true;
  int _currentIndex = 0;
  final double _progress = 0.4;

  final List<Flashcard> _flashcards = [
    Flashcard(
      question: 'Qu\'est-ce qu\'une fraction propre ?',
      answer: 'C\'est une fraction dont le numérateur est inférieur au dénominateur (ex: 3/4).',
    ),
    Flashcard(
      question: 'Comment additionner deux fractions de même dénominateur ?',
      answer: 'On additionne les numérateurs et on garde le même dénominateur.',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _flipCard() {
    if (_isFront) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    setState(() {
      _isFront = !_isFront;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          children: [
            const Text('Les Fractions', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 4),
            SizedBox(
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9999),
                child: LinearProgressIndicator(
                  value: _progress,
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
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: _flipCard,
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    final angle = _controller.value * pi;
                    return Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(angle),
                      alignment: Alignment.center,
                      child: angle < pi / 2
                          ? _buildCardSide(
                              text: _flashcards[_currentIndex].question,
                              isFront: true,
                            )
                          : Transform(
                              transform: Matrix4.identity()..rotateY(pi),
                              alignment: Alignment.center,
                              child: _buildCardSide(
                                text: _flashcards[_currentIndex].answer,
                                isFront: false,
                              ),
                            ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 40),
            _isFront ? _buildFlipHint() : _buildConfidenceRating(),
          ],
        ),
      ),
    );
  }

  Widget _buildCardSide({required String text, required bool isFront}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
        border: Border.all(
          color: isFront ? AppColors.primaryContainer.withOpacity(0.2) : AppColors.secondaryContainer.withOpacity(0.2),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(32),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              isFront ? 'QUESTION' : 'RÉPONSE',
              style: TextStyle(
                color: isFront ? AppColors.primary : AppColors.secondary,
                fontWeight: FontWeight.w900,
                fontSize: 12,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFlipHint() {
    return Column(
      children: const [
        Icon(Icons.touch_app, color: AppColors.outline, size: 30),
        SizedBox(height: 8),
        Text(
          'Appuie pour voir la réponse',
          style: TextStyle(color: AppColors.outline),
        ),
      ],
    );
  }

  Widget _buildConfidenceRating() {
    return Column(
      children: [
        const Text(
          'Comment as-tu trouvé cette carte ?',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildRatingButton('Revoir', Colors.red, Icons.replay),
            _buildRatingButton('Difficile', Colors.orange, Icons.sentiment_neutral),
            _buildRatingButton('Facile', Colors.green, Icons.sentiment_very_satisfied),
          ],
        ),
      ],
    );
  }

  Widget _buildRatingButton(String label, Color color, IconData icon) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // Logic to move to next card or finish session
            if (_currentIndex < _flashcards.length - 1) {
              setState(() {
                _currentIndex++;
                _isFront = true;
                _controller.reset();
              });
            } else {
              Navigator.pop(context);
            }
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
              border: Border.all(color: color.withOpacity(0.5)),
            ),
            child: Icon(icon, color: color),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Flashcard {
  final String question;
  final String answer;

  Flashcard({required this.question, required this.answer});
}
