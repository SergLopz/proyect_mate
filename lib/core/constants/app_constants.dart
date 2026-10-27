class AppConstants {
  // Títulos generales de la aplicación y pantallas
  static const String appName = 'Gestión de Servicios';
  static const String homeTitle = 'Panel Principal';

  // Textos para los botones del menú principal
  static const String btnRegisterUser = 'Registrar Cliente';
  static const String btnRegisterService = 'Registrar Servicio';
  static const String btnHistory = 'Ver Historial';
  static const String btnReport = 'Generar Informe';

  // Datos de prueba (Mocks) para la pantalla de Historial
  // Te servirán para poblar el ListView visualmente por ahora
  static const List<Map<String, dynamic>> mockHistoryList = [
    {
      'user': 'Carlos Pérez',
      'service': 'Mantenimiento preventivo',
      'amount': '\$80.000',
      'date': '24/10/2026',
    },
    {
      'user': 'Ana Gómez',
      'service': 'Configuración de red',
      'amount': '\$120.000',
      'date': '25/10/2026',
    },
    {
      'user': 'Luis Torres',
      'service': 'Soporte técnico remoto',
      'amount': '\$50.000',
      'date': '26/10/2026',
    },
  ];

  // Datos de prueba (Mocks) para el historial de informes
  static const List<Map<String, dynamic>> mockReportList = [
    {'title': 'Informe_Servicios_Septiembre.pdf', 'date': '30/09/2026'},
    {'title': 'Cierre_Operativo_Q3.pdf', 'date': '01/10/2026'},
  ];
}
