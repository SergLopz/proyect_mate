import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  // Función simulada para generar el informe
  void _generateReport() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('¡Informe generado con éxito! (Diseño visual)'),
        backgroundColor: Colors.purple,
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Obtenemos los informes de prueba desde las constantes
    final reportList = AppConstants.mockReportList;

    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.btnReport)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1. Botón superior destacado para generar informe
              ElevatedButton.icon(
                onPressed: _generateReport,
                icon: const Icon(Icons.add_chart_rounded, size: 24),
                label: const Text(
                  'Generar Nuevo Informe',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                ),
              ),
              const SizedBox(height: 28),

              // Título de la sección de historial
              const Text(
                'Historial de Informes Generados',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                'Lista de documentos previos (Mock)',
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),
              const SizedBox(height: 16),

              // 2. Lista inferior con los informes previos
              Expanded(
                child: reportList.isEmpty
                    ? const Center(
                        child: Text('No hay informes generados todavía.'),
                      )
                    : ListView.builder(
                        itemCount: reportList.length,
                        itemBuilder: (context, index) {
                          final report = reportList[index];
                          return Card(
                            margin: const EdgeInsets.only(bottom: 12.0),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              leading: const CircleAvatar(
                                backgroundColor: Colors.purple,
                                child: Icon(
                                  Icons.picture_as_pdf_rounded,
                                  color: Colors.purple,
                                ),
                              ),
                              title: Text(
                                report['title'] ?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              subtitle: Text(
                                'Fecha de creación: ${report['date']}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.download_rounded,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  // Acción simulada de descarga
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Descargando ${report['title']}...',
                                      ),
                                      duration: const Duration(seconds: 1),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
