import 'package:flutter/material.dart';
import '../theme.dart';

class BluetoothShareScreen extends StatefulWidget {
  const BluetoothShareScreen({Key? key}) : super(key: key);

  @override
  State<BluetoothShareScreen> createState() => _BluetoothShareScreenState();
}

class _BluetoothShareScreenState extends State<BluetoothShareScreen> with SingleTickerProviderStateMixin {
  late AnimationController _pulseController;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partage Bluetooth'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            const Text(
              'Envoi de "Les Fractions"',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Assure-toi que le Bluetooth est activé sur les deux appareils.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.onSurfaceVariant),
            ),
            const Spacer(),
            
            // Pulsing Bluetooth Animation
            Stack(
              alignment: Alignment.center,
              children: [
                AnimatedBuilder(
                  animation: _pulseController,
                  builder: (context, child) {
                    return Container(
                      width: 200 * _pulseController.value,
                      height: 200 * _pulseController.value,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary.withOpacity(1 - _pulseController.value),
                      ),
                    );
                  },
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.bluetooth_searching, color: Colors.white, size: 50),
                ),
              ],
            ),
            
            const Spacer(),
            _buildSectionHeader('Appareils à proximité'),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildDeviceTile('Infinix Note 30', 'Disponible'),
                  _buildDeviceTile('iPhone de Fatou', 'Appairé'),
                  _buildDeviceTile('TECNO Spark 10', 'Disponible'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(width: 8, height: 8, child: CircularProgressIndicator(strokeWidth: 2)),
      ],
    );
  }

  Widget _buildDeviceTile(String name, String status) {
    return ListTile(
      leading: const Icon(Icons.phone_android),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(status),
      trailing: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.surfaceContainerHigh,
          foregroundColor: AppColors.primary,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        child: const Text('Envoyer'),
      ),
    );
  }
}
