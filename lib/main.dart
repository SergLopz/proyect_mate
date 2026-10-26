import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión de Servicios',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // Aplica nuestra paleta y estilos globales
      home: const SplashScreen(), // <--- Arranca en la pantalla de bienvenida
    );
  }
}
