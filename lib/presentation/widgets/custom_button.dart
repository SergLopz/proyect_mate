import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  // Parámetros visuales opcionales por si quieres personalizarlos individualmente,
  // pero con valores por defecto basados en tu AppTheme.
  final double borderRadius;
  final double elevation;

  const CustomButton({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
    this.borderRadius = 16.0,
    this.elevation = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icono con el color personalizado que le pases
              Icon(icon, size: 48, color: color),
              const SizedBox(height: 12),
              // Texto del botón
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
