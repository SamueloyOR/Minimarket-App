import 'package:flutter/material.dart';
import 'package:minimarket_app/app_colors.dart';

class ClientScreen extends StatelessWidget {
  const ClientScreen({super.key, this.customerName = 'Cliente Demo'});

  final String customerName;

  static const _products = [
    ('Leche entera', 'Lácteos', '\$4.500', Icons.local_drink_outlined),
    ('Manzanas rojas', 'Frutas', '\$3.200', Icons.apple_outlined),
    ('Pan artesanal', 'Panadería', '\$2.800', Icons.bakery_dining_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Mi mercado'),
        backgroundColor: AppColors.cardBg,
        foregroundColor: AppColors.textPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Hola, $customerName',
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Estos productos pueden interesarte',
            style: TextStyle(color: AppColors.textMuted),
          ),
          const SizedBox(height: 20),
          const Text(
            'Productos destacados',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          for (final product in _products)
            Card(
              color: AppColors.cardBg,
              margin: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppColors.background,
                  child: Icon(product.$4, color: AppColors.primaryLight),
                ),
                title: Text(
                  product.$1,
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  product.$2,
                  style: const TextStyle(color: AppColors.textMuted),
                ),
                trailing: Text(
                  product.$3,
                  style: const TextStyle(
                    color: AppColors.primaryLight,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
