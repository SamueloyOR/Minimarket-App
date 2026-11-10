import 'package:flutter/material.dart';
import 'package:minimarket_app/app_colors.dart';

class LoginUserScreen extends StatefulWidget {
  const LoginUserScreen({super.key});

  @override
  State<LoginUserScreen> createState() => _LoginUserScreenState();
}

class _LoginUserScreenState extends State<LoginUserScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            letterSpacing: -1.2,
            fontWeight: FontWeight.bold,
          ),
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
                        letterSpacing: -1
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
                letterSpacing: -1
              ),
            ),
            const Text(
              'Ingresa a tu cuenta para continuar con tus pedidos y beneficios.',
                style: TextStyle(
                  color: AppColors.textMuted
                ),
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: 
                    Divider(
                      color: AppColors.textMuted,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    'Ingresa con tu correo / telefono',
                      style: TextStyle(
                        color: AppColors.textSecondary
                      ),
                  ),
                Expanded(
                  child:
                    Divider(
                      color: AppColors.textMuted,
                      indent: 10,
                      endIndent: 10, 
                      thickness: 1,
                    ))
              ],
            ),
            const SizedBox(height: 10,),

            const Text(
              'Correo electronico',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5
                ),
            ),

            const SizedBox(height: 10),

            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'example@gmail.com',
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
            ),

            const SizedBox(height: 10),

            const Text(
              'Contraseña',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5
                ),
            ),

            const SizedBox(height: 10),

            TextFormField(
              controller: _passwordController,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
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
            ),
          ],
        ),
      ),
    );
  }
}