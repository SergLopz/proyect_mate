import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../widgets/custom_button.dart';

// Importamos las pantallas a las que vamos a navegar
import 'register_user_screen.dart';
import 'register_service_screen.dart';
import 'history_screen.dart';
import 'report_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.homeTitle),
        // Opcional: Impedir que se muestre el botón de "atrás" en el menú principal si se llega desde el Splash
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Mensaje de bienvenida / Encabezado visual
              const Text(
                '¡Bienvenido!',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Text(
                'Selecciona una de las opciones para comenzar:',
                style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
              ),
              const SizedBox(height: 24),

              // 2. Matriz 2x2 con los botones principales
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2, // 2 columnas x 2 filas
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  children: [
                    CustomButton(
                      title: AppConstants.btnRegisterUser,
                      icon: Icons.person_add_rounded,
                      color: Colors.blue,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterUserScreen(),
                          ),
                        );
                      },
                    ),
                    CustomButton(
                      title: AppConstants.btnRegisterService,
                      icon: Icons.home_repair_service_rounded,
                      color: Colors.orange,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterServiceScreen(),
                          ),
                        );
                      },
                    ),
                    CustomButton(
                      title: AppConstants.btnHistory,
                      icon: Icons.history_rounded,
                      color: Colors.green,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HistoryScreen(),
                          ),
                        );
                      },
                    ),
                    CustomButton(
                      title: AppConstants.btnReport,
                      icon: Icons.assessment_rounded,
                      color: Colors.purple,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReportScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
