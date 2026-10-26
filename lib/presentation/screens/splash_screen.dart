import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // Función para navegar hacia el Home y reemplazar la pantalla actual
  // para que al presionar "atrás" en el celular no regrese al Splash.
  void _navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Usamos el color primario de nuestro AppTheme para el fondo uniforme
      backgroundColor: AppTheme.primaryColor,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () =>
            _navigateToHome(context), // Detecta el Tap en cualquier parte
        onVerticalDragEnd: (details) {
          // Detecta un gesto de deslizamiento vertical (swipe) hacia arriba o abajo
          _navigateToHome(context);
        },
        child: const SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Texto grande que simula el logo
                Text(
                  'LOGO',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 4.0,
                  ),
                ),
                SizedBox(height: 12),
                // Subtítulo descriptivo
                Text(
                  'Gestión de Servicios',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 64),
                // Texto pequeño indicando la acción
                Text(
                  'Deslice o toque para continuar',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white54,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
