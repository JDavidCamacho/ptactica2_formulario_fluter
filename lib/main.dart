import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Formulario de Registro",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0XFF1E3A8A),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0XFF1E3A8A),
          secondary: const Color(0XFF6B7280),
        ),
        useMaterial3: true,
      ),
      home: const RegistrationFormsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegistrationFormsScreen extends StatelessWidget {
  const RegistrationFormsScreen({super.key});

  static const Color primaryNavu = Color(0xFF1E3A6A);
  static const Color backgroundGray = Color(0xFFF9FAFB);
  static const Color secondaryGray = Color(0xFF6B7280); // Definido para evitar error

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
    child:  Container(
      padding: EdgeInsets.all(24),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: secondaryGray.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        children: [
          Icon(Icons.confirmation_num),
          SizedBox(height: 12),
          Text(
            "datos personales",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: primaryNavu,
            ),
          ),
          SizedBox(height: 8),


          Text(
            "complete todos los campos ",
            style: TextStyle(fontSize: 14, color: backgroundGray),
          ),


          SizedBox(height: 8,),

//nombre
          Text("Nombre",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: primaryNavu,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingrese su nombre',
            ),
          ),

//apellido
        Text("Apellido",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: primaryNavu,
        ),
        ),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingrese su apellido',
            ),
          ),

//usuario

        Text("Usuario",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: primaryNavu,
        ),
        ),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingrese su usuario',
            ),
          ),

//contraseña

        Text("Contrasenia",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: primaryNavu,
          ),
        ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingrese su contrasenia',
            ),
          ),




          Text("Correo",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: primaryNavu,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingrese su correo',
            ),
          ),
          Text("telefono",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: primaryNavu,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingrese su telefono',
            ),
          ),

          SizedBox(height: 16), // Espacio antes del botón
          ElevatedButton(
            onPressed: () {
              // Acción del botón
              print("Botón presionado");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryNavu,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Registrar',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),

    ),
    ),
    );

  }
}
