import 'package:flutter/material.dart';

class AppTheme {
  // Definición de colores principales de la app
  static const Color primaryColor = Color(
    0xFF1E3A8A,
  ); // Azul oscuro / corporativo
  static const Color secondaryColor = Color(
    0xFF0EA5E9,
  ); // Celeste brillante para acentos
  static const Color backgroundColor = Color(
    0xFFF8FAFC,
  ); // Gris muy claro para fondos
  static const Color cardColor = Colors.white;
  static const Color textColor = Color(0xFF1E293B);

  // Tema Claro (Light Theme)
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: primaryColor,

      // Configuración global de la barra superior (AppBar)
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),

      // Configuración global de las Tarjetas (como las de tu matriz 2x2)
      cardTheme: const CardThemeData(
        // <--- Cambiado de CardTheme a CardThemeData
        color: cardColor,
        elevation: 3,
        shadowColor: Colors.black12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ), // O BorderRadius.circular(16)
        ),
      ),

      // Configuración global para los formularios (TextFormField) que usarás en tus registros
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: primaryColor, width: 2),
        ),
      ),

      // Estilo global de textos
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: textColor, fontSize: 16),
        bodyMedium: TextStyle(color: textColor, fontSize: 14),
        titleLarge: TextStyle(
          color: textColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
