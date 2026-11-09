import 'package:flutter/material.dart';
import 'package:minimarket_app/app_colors.dart';

class LoginUserScreen extends StatelessWidget {
  const LoginUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            letterSpacing: -1.2,
            fontWeight: FontWeight.bold
            ),
        ),
        backgroundColor: AppColors.cardBg,
        foregroundColor: AppColors.textPrimary,

        centerTitle: true,

        actions: <Widget>[
          Padding(
            padding: const EdgeInsetsGeometry.only(right: 12),
            child: IconButton(
              icon: const Icon(Icons.person_outlined),
              style: OutlinedButton.styleFrom(
                iconColor: AppColors.textPrimary,
                iconSize: 20,
                backgroundColor: AppColors.primary,
                
              ),
              onPressed: () {

              },
            )
          ,)
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(50)
              ),
              child: const Icon(
                Icons.shopping_cart,
                color: AppColors.textPrimary,
                size: 30,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'MiniMarket',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Fesco y rapido',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 10,
                    fontWeight: FontWeight.bold)
                  ),
              ],
            ),
            const SizedBox(width: 50),
            Row(
              children:[
                
              ],
            )
          ]
        ),
      ),
    );
  }
}