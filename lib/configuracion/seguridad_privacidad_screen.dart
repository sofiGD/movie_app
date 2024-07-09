import 'package:flutter/material.dart';

class SeguridadPrivacidadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seguridad y Privacidad'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Cambiar Contraseña'),
            subtitle: Text('Actualiza tu contraseña'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de cambio de contraseña
            },
          ),
          ListTile(
            leading: Icon(Icons.fingerprint),
            title: Text('Habilitar Huella Digital'),
            subtitle: Text('Usa tu huella digital para acceder'),
            trailing: Switch(
              value: true,
              onChanged: (bool value) {
                // Lógica para habilitar/deshabilitar huella digital
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text('Bloqueo de Aplicación'),
            subtitle: Text('Configura el bloqueo de la aplicación'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de configuración de bloqueo de la aplicación
            },
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Verificación en Dos Pasos'),
            subtitle: Text('Añade una capa extra de seguridad'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de configuración de verificación en dos pasos
            },
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Política de Privacidad'),
            subtitle: Text('Lee nuestra política de privacidad'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de política de privacidad
            },
          ),
          ListTile(
            leading: Icon(Icons.phonelink_erase),
            title: Text('Borrar Datos'),
            subtitle: Text('Elimina todos tus datos de la aplicación'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de borrado de datos
            },
          ),
        ],
      ),
    );
  }
}
