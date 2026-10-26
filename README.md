# 📱 Aplicación de Gestión de Servicios (Flutter) - proyect mate

Aplicación móvil desarrollada en Flutter con una arquitectura limpia por carpetas, diseñada para la gestión operativa y de servicios. Actualmente se encuentra en su fase de **diseño visual y prototipado frontend** (sin base de datos backend conectada por el momento).

## 📂 Estructura del Proyecto (`lib/`)

El proyecto sigue una organización modular y escalable:

- **`main.dart`**: Punto de entrada de la aplicación y configuración del tema global.
- **`core/`**: 
  - `constants/app_constants.dart`: Textos fijos, rutas y datos de prueba (mocks) centralizados.
  - `theme/app_theme.dart`: Paleta de colores corporativos, estilos de tipografía y temas personalizados (Material 3).
- **`presentation/`**:
  - `widgets/`: Componentes reutilizables (ej. `custom_button.dart` para la matriz principal).
  - `screens/`:
    - `splash_screen.dart`: Pantalla de bienvenida / carga con soporte para gestos táctiles y deslizamiento.
    - `home_screen.dart`: Panel principal con una matriz de botones (2x2).
    - `register_user_screen.dart`: Formulario visual para el registro de usuarios.
    - `register_service_screen.dart`: Formulario visual para registrar servicios y montos.
    - `history_screen.dart`: Visualización del historial de servicios y pagos (mock data).
    - `report_screen.dart`: Historial de informes generados con botón superior destacado.

---

## 🚀 Cómo ejecutar el proyecto

1. Asegúrate de tener Flutter instalado en tu equipo.
2. Clona este repositorio y abre la terminal en la carpeta raíz.
3. Ejecuta los siguientes comandos:
   ```bash
   flutter pub get
   flutter run
   ```