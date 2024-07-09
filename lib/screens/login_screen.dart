import 'package:flutter/material.dart';
import 'main_menu.dart';  // Asegúrate de que tienes este archivo en tu proyecto
import 'package:semana13_banco/services/session_manager.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://st.depositphotos.com/1275255/2371/i/450/depositphotos_23711997-stock-photo-blue-abstract-bright-card-design.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('                    BBVA', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                  IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainMenu()),
                      );
                    },
                  ),
                ],
              ),
            ),
            Spacer(flex: 2),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: Text('SG', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue[800])),
            ),
            SizedBox(height: 10),
            Text('Hola Sofia', style: TextStyle(fontSize: 24, color: Colors.white)),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {},
              child: Text('Cambiar usuario', style: TextStyle(decoration: TextDecoration.underline)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue[800],
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: Text('Iniciar sesión'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreenSession()),
                );
              },
            ),
            Spacer(flex: 3),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.security, color: Colors.white),
                        onPressed: () {},
                      ),
                      Text('Token digital', style: TextStyle(color: Colors.white, fontSize: 12))
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.map, color: Colors.white),
                        onPressed: () {},
                      ),
                      Text('Puntos de atención', style: TextStyle(color: Colors.white, fontSize: 12))
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.monetization_on_outlined, color: Colors.white),
                        onPressed: () {},
                      ),
                      Text('Plin', style: TextStyle(color: Colors.white, fontSize: 12))
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.business, color: Colors.white),
                        onPressed: () {},
                      ),
                      Text('Acceder a Mi Negocio', style: TextStyle(color: Colors.white, fontSize: 12))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
