import 'package:flutter/material.dart';
import 'package:semana13_banco/configuracion/configuracion_sreen.dart';
import 'package:semana13_banco/configuracion/seguridad_privacidad_screen.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Eliminar cualquier color de fondo predeterminado
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Barra superior un poco más oscura
        title: Text('Perfil', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://static3.depositphotos.com/1000837/114/i/450/depositphotos_1145026-stock-photo-rays-of-light.jpg"), // Usar imagen desde URL
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Sofia Grijalva', style: TextStyle(color: Colors.white)),
              accountEmail: Text(''), // Agregar un email o dejar vacío
              decoration: BoxDecoration(
                color: Colors.transparent, // Hacer el fondo del header transparente para mostrar la imagen
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('SG', style: TextStyle(fontSize: 30.0, color: Colors.blue[800])),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Configuración', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfiguracionScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.security, color: Colors.white),
              title: Text('Seguridad y privacidad', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeguridadPrivacidadScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card, color: Colors.white),
              title: Text('Token digital', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.qr_code, color: Colors.white),
              title: Text('Operar con QR / Plin', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.place, color: Colors.white),
              title: Text('Puntos de atención', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.call, color: Colors.white),
              title: Text('Comunícate con nosotros', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.apps, color: Colors.white),
              title: Text('Aplicaciones', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.white),
              title: Text('Acerca de BBVA', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
