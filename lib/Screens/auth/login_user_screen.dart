import 'package:flutter/material.dart';
import 'package:minimarket_app/app_colors.dart';

import 'create_user_screen.dart';

import 'package:minimarket_app/dashboard/admin_screen.dart';
import 'package:minimarket_app/dashboard/worker_screen.dart';
import 'package:minimarket_app/dashboard/client_screen.dart';

class LoginUserScreen extends StatefulWidget {
  const LoginUserScreen({super.key});

  @override
  State<LoginUserScreen> createState() => _LoginUserScreenState();
}

//crear formularios y validacion de entradas
class _LoginUserScreenState extends State<LoginUserScreen> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _iniciarSesion() {
    if (_formkey.currentState?.validate() ?? false) {
      final email = _emailController.text.trim();
      final password = _passwordController.text;

      if (email == 'admin@gmail.com' && password == '391221') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AdminScreen()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Correo o contraseña incorrectos'),
            backgroundColor: Colors.red,
          ),
        );
      }
      if (email == 'worker@gmail.com' && password == '391221') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const WorkerScreen()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Correo o contraseña incorrectos'),
            backgroundColor: Colors.red,
          ),
        );
      }
      if (email == 'client@gmail.com' && password == '391221') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ClientScreen()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Correo o contraseña incorrectos'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(letterSpacing: -1.2, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.cardBg,
        foregroundColor: AppColors.textPrimary,
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              icon: const Icon(Icons.person_outlined),
              style: IconButton.styleFrom(
                foregroundColor: AppColors.textPrimary,
                iconSize: 20,
                backgroundColor: AppColors.primary,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.shopping_cart,
                      color: AppColors.textPrimary,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MiniMarket',
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1,
                        ),
                      ),
                      Text(
                        'Fesco & rapido',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Hola de Nuevo!',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1,
                ),
              ),
              const Text(
                'Ingresa a tu cuenta para continuar con tus pedidos y beneficios.',
                style: TextStyle(color: AppColors.textMuted),
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.textMuted,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    'Ingresa con tu correo / telefono',
                    style: TextStyle(color: AppColors.textSecondary),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColors.textMuted,
                      indent: 10,
                      endIndent: 10,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              const Text(
                'Correo electronico',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),

              const SizedBox(height: 10),

              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'example@gmail.com',
                  labelStyle: TextStyle(color: AppColors.textMuted),
                  hintStyle: const TextStyle(color: AppColors.textMuted),
                  filled: true,
                  fillColor: AppColors.cardBg,
                  prefixIcon: const Icon(
                    Icons.email,
                    color: AppColors.textMuted,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.border, width: 1),
                  ),
                ),

                validator: (value) {
                  //si es nulo o es vacio retorne ingrese el correo electronico
                  if (value == null || value.trim().isEmpty) {
                    return 'ingrese el correo electronico';
                  }
                  // definir q el valor no cambie y contenga caracteres de un correo
                  final email = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                  // si el correo es diferente retorna formato no invalido
                  if (!email.hasMatch(value.trim())) {
                    return 'Formato de correo no valido';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10),

              const Text(
                'Contraseña',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),

              const SizedBox(height: 10),

              TextFormField(
                controller: _passwordController,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: '*********',
                  hintStyle: const TextStyle(color: AppColors.textMuted),
                  filled: true,
                  fillColor: AppColors.cardBg,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: AppColors.textMuted,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.border, width: 1),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Por favor ingresa tu contraseña';
                  }
                  if (value.length < 6) {
                    return 'La contraseña debe tener al menos 6 caracteres';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.arrow_forward),
                      iconAlignment: IconAlignment.end,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.textPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        iconSize: 20,
                      ),
                      onPressed: _iniciarSesion,
                      label: const Text(
                        'Iniciar Sesion',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight(1000),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.fingerprint),
                    style: IconButton.styleFrom(
                      fixedSize: const Size(56, 56),
                      backgroundColor: AppColors.cardBg,
                      foregroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                      side: BorderSide(color: AppColors.border),
                      elevation: 20,
                      shadowColor: AppColors.shadow,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Aun no tienes cuenta?',
                    style: TextStyle(color: AppColors.textMuted),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateUserScreen(),
                        ),
                      );
                    },

                    child: const Text('Registrate aqui'),
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.primary,
                      textStyle: const TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
