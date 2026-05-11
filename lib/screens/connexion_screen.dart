import 'package:flutter/material.dart';
import '../theme.dart';

class ConnexionScreen extends StatelessWidget {
  const ConnexionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background decorations
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height,
            child: Container(
              color: AppColors.background,
              child: Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.1,
                    right: -50,
                    child: Container(
                      width: 256,
                      height: 256,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryContainer.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.1,
                    left: -50,
                    child: Container(
                      width: 320,
                      height: 320,
                      decoration: BoxDecoration(
                        color: AppColors.primaryContainer.withOpacity(0.05),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Hero Branding
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.primaryContainer,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withOpacity(0.2),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.auto_stories,
                          size: 40,
                          color: AppColors.onPrimary,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Bon retour !',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Connecte-toi pour retrouver tes flashcards.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.onSurfaceVariant,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Login Form Card
                      Container(
                        padding: const EdgeInsets.all(32),
                        decoration: BoxDecoration(
                          color: AppColors.surfaceContainerLowest,
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(color: AppColors.surfaceContainerHigh),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF6366F1).withOpacity(0.08),
                              blurRadius: 30,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Email Field
                            _buildLabel(context, Icons.mail_outline, 'Email'),
                            const SizedBox(height: 8),
                            _buildTextField(
                              hintText: 'ton@email.com',
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 24),

                            // Password Field
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildLabel(context, Icons.lock_outline, 'Mot de passe'),
                                TextButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Réinitialisation envoyée à votre email.')),
                                    );
                                  },
                                  child: const Text(
                                    'Mot de passe oublié ?',
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            _buildTextField(
                              hintText: '••••••••',
                              obscureText: true,
                              suffixIcon: const Icon(Icons.visibility_outlined, color: AppColors.outline),
                            ),
                            const SizedBox(height: 32),

                            // Primary Action
                            SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(context, '/dashboard');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('Se connecter'),
                                    SizedBox(width: 16),
                                    Icon(Icons.arrow_forward),
                                  ],
                                ),
                              ),
                            ),

                            // Divider
                            const SizedBox(height: 32),
                            Row(
                              children: const [
                                Expanded(child: Divider(color: AppColors.outlineVariant)),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Text(
                                    'OU',
                                    style: TextStyle(
                                      color: AppColors.outline,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Expanded(child: Divider(color: AppColors.outlineVariant)),
                              ],
                            ),
                            const SizedBox(height: 32),

                            // Social Logins
                            Row(
                              children: [
                                Expanded(
                                  child: _buildSocialButton(
                                    icon: Image.network(
                                      'https://lh3.googleusercontent.com/aida-public/AB6AXuAgAXYs9QF8QvAQGDOnJefRvtR_vDUBb91C2kABricbAHaXhbGJ8p4IjO-FNBtO0oat0ukWaxR-M3vT6ZIUM8Dgm2BDy1lBDt5VqLtJR3KYfgunb5z8xnsjlLjIT_RW8wXI9vq_FeBNav5mC1D2cMDPcbMx3MWuFl433rJT9WYrE1gIrn30y-mv6py3G6Doj-gn1HZwzOibJD5mPYqIjDiSh7Az0NgpEzjtb5ALk7SLAhwDkOCtxCZ74gpHnn7s9jP1Uk2F3Z62ofQ',
                                      width: 24,
                                      height: 24,
                                    ),
                                    label: 'Google',
                                    onPressed: () {},
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: _buildSocialButton(
                                    icon: const Icon(Icons.apple, color: Colors.white, size: 24),
                                    label: 'Apple',
                                    backgroundColor: AppColors.onSurface,
                                    textColor: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Pas de compte ? ',
                            style: TextStyle(color: AppColors.onSurfaceVariant),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/inscription');
                            },
                            child: const Text(
                              'S\'inscrire',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          
          // Online Indicator
          Positioned(
            top: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(9999),
                border: Border.all(color: Colors.blue.withOpacity(0.2)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.wifi, size: 18, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'ONLINE',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLabel(BuildContext context, IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.onSurfaceVariant),
        const SizedBox(width: 8),
        Text(
          text,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }

  Widget _buildTextField({
    required String hintText,
    bool obscureText = false,
    Widget? suffixIcon,
    TextInputType? keyboardType,
  }) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.outline.withOpacity(0.5)),
        fillColor: AppColors.surfaceContainerLow,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.outlineVariant),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.outlineVariant),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }

  Widget _buildSocialButton({
    required Widget icon,
    required String label,
    required VoidCallback onPressed,
    Color backgroundColor = AppColors.surfaceContainerHigh,
    Color textColor = AppColors.onSurface,
  }) {
    return Container(
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: backgroundColor == AppColors.surfaceContainerHigh 
                ? BorderSide.none 
                : const BorderSide(color: Colors.transparent),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
