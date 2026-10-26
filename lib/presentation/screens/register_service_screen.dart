import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';

class RegisterServiceScreen extends StatefulWidget {
  const RegisterServiceScreen({super.key});

  @override
  State<RegisterServiceScreen> createState() => _RegisterServiceScreenState();
}

class _RegisterServiceScreenState extends State<RegisterServiceScreen> {
  // Clave global para validar el formulario
  final _formKey = GlobalKey<FormState>();

  // Controladores de texto para los campos
  final _clientNameController = TextEditingController();
  final _serviceTypeController = TextEditingController();
  final _amountController = TextEditingController();
  final _dateController = TextEditingController(
    text: '26/10/2026', // Fecha por defecto simulada
  );

  @override
  void dispose() {
    _clientNameController.dispose();
    _serviceTypeController.dispose();
    _amountController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  void _saveService() {
    if (_formKey.currentState!.validate()) {
      // Mensaje flotante de éxito visual (Mock)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('¡Servicio registrado con éxito! (Diseño visual)'),
          backgroundColor: Colors.orange,
          duration: Duration(seconds: 2),
        ),
      );

      // Opcional: limpiar o regresar
      // Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.btnRegisterService)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Icono decorativo superior acorde al color del botón de la matriz
                const Icon(
                  Icons.home_repair_service_rounded,
                  size: 64,
                  color: Colors.orange,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Registrar los detalles del servicio',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),

                // Campo: Nombre del cliente
                TextFormField(
                  controller: _clientNameController,
                  decoration: const InputDecoration(
                    labelText: 'Cliente / Usuario',
                    prefixIcon: Icon(Icons.person_pin_outlined),
                    hintText: 'Ej. Carlos Pérez',
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Por favor ingresa el nombre del cliente';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Campo: Tipo o descripción del servicio
                TextFormField(
                  controller: _serviceTypeController,
                  decoration: const InputDecoration(
                    labelText: 'Tipo de Servicio',
                    prefixIcon: Icon(Icons.design_services_outlined),
                    hintText: 'Ej. Mantenimiento preventivo de red',
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Por favor describe el servicio';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Campo: Valor pagado
                TextFormField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Valor Pagado (\$)',
                    prefixIcon: Icon(Icons.attach_money_rounded),
                    hintText: 'Ej. 80000',
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Por favor ingresa el valor pagado';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Campo: Fecha
                TextFormField(
                  controller: _dateController,
                  decoration: const InputDecoration(
                    labelText: 'Fecha del Servicio',
                    prefixIcon: Icon(Icons.calendar_today_outlined),
                    hintText: 'DD/MM/AAAA',
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Por favor ingresa la fecha';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32),

                // Botón de Guardar Servicio
                ElevatedButton(
                  onPressed: _saveService,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  child: const Text(
                    'Guardar Servicio',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
