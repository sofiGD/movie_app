import 'package:flutter/material.dart';

class ConfiguracionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificaciones'),
            subtitle: Text('Gestiona las notificaciones'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de configuración de notificaciones
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacidad'),
            subtitle: Text('Ajusta tus preferencias de privacidad'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de configuración de privacidad
            },
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Seguridad'),
            subtitle: Text('Configura la seguridad de tu cuenta'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de configuración de seguridad
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Idioma'),
            subtitle: Text('Selecciona el idioma de la aplicación'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de configuración de idioma
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Acerca de'),
            subtitle: Text('Información sobre la aplicación'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de información sobre la aplicación
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Avisos',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.warning, color: Colors.orange),
            title: Text('Actualizar a la última versión'),
            subtitle: Text('Una nueva versión está disponible'),
            onTap: () {
              // Navegar a la pantalla de actualización
            },
          ),
          ListTile(
            leading: Icon(Icons.error, color: Colors.red),
            title: Text('Problemas de conexión'),
            subtitle: Text('Revisa tu conexión a internet'),
            onTap: () {
              // Navegar a la pantalla de solución de problemas
            },
          ),
        ],
      ),
    );
  }
}
