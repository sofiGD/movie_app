import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreenSession extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Iniciar sesión"),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Nombre de usuario o correo electrónico',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                Text("Recuérdame"),
                TextButton(
                  onPressed: () {},
                  child: Text('¿Has olvidado tu contraseña?'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print("Acceder con email: ${emailController.text} y contraseña: ${passwordController.text}");
              },
              child: Text('Acceder'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // background color
                foregroundColor: Colors.white, // foreground color
              ),
            ),
            SizedBox(height: 10),
            Text("o conéctate con", textAlign: TextAlign.center),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                print("Inicio sesión con Facebook");
              },
              icon: Icon(Icons.facebook, color: Colors.white),
              label: Text('Continuar con Facebook'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[800], // background color
                foregroundColor: Colors.white, // foreground color
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print("Inicio sesión con Google");
              },
              icon: Icon(Icons.g_translate, color: Colors.white),
              label: Text('Continua con Google'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // background color
                foregroundColor: Colors.white, // foreground color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SessionManager {
  void signIn(String email, String password) {
    // Implementa la lógica de autenticación aquí
    print("Intentando iniciar sesión con email: $email y contraseña: $password");
  }

// Puedes añadir más métodos para Google y Facebook si es necesario
}
