import 'package:flutter/material.dart';
import '../app_colors.dart';

//Creacion de un statelessweidget de la pantalla de inicio
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.primary),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primaryHover,
                            blurRadius: 5,
                            offset: Offset(0, 5)
                          )
                        ]
                      ),
                      child: const Icon(Icons.eco_rounded, color: AppColors.textPrimary, size: 45, shadows: [],),
                    ),
                    const SizedBox(width: 15),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "MiniMarket",
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.5,
                          ),
                        ),

                        SizedBox(height: 1),

                        Text(
                          "Mercado & despensa",
                          style: TextStyle(
                            color: AppColors.primaryLight,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.25,
                          ),
                          
                        ),
                        
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: AppColors.border,
                          width: 1.0,
                        ),  
                        image: const DecorationImage(
                          image: AssetImage('assets/images/minimarket.jpeg'),
                          fit: BoxFit.cover)
                      ),
                    ),
              ]),
              const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Tu mercado fresco en minutos',
                      style: TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -1.2
                        ),
                        textAlign: TextAlign.center,
                        
                      ),

                      SizedBox(height: 10,),

                      Text('Productos del campo directos a tu hogar con la mejor calidad.',
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      )],
                    ),
                    SizedBox(height: 30),
                Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                        ElevatedButton.icon(
                          icon: const Icon(Icons.arrow_forward),
                          iconAlignment: IconAlignment.end,
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 16
                            ),
                            backgroundColor: AppColors.primary,
                            foregroundColor: AppColors.textPrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                        ),
                        onPressed: () {},
                        label: const Text(
                          'Empezar a comprar',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        )
                    ],
                ),
                const SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton.icon(
                      icon: const Icon(Icons.login_rounded),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16
                            ),
                            backgroundColor: AppColors.inputBg,
                            foregroundColor: AppColors.textPrimary,
                            iconColor: AppColors.primaryLight,
                            iconSize: 20,
                            side: const BorderSide(
                              color: AppColors.border,
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        label: Text('Ya tengo una cuenta • Iniciar Sesion',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      )
                    ],),
                    const SizedBox(height: 30,),
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Text(
                      '¿Eres trabajador o admin?',
                      style: TextStyle(
                        color: AppColors.textMuted,
                        fontSize: 15,
                      ),
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.primaryLight,
                      ),
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios, size: 10),
                      iconAlignment: IconAlignment.end,
                      label: const Text('Entra aquí'),
                    ),
                  ],
                )
            ]),
          ),
        ),
      ),
    );
  }
}