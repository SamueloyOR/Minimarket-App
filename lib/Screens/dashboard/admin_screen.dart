import 'package:flutter/material.dart';
import 'package:minimarket_app/app_colors.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  static const _summary = [
    ('Ventas de hoy', '\$845.000', Icons.trending_up),
    ('Pedidos', '24', Icons.receipt_long_outlined),
    ('Productos', '128', Icons.inventory_2_outlined),
  ];

  static const _activity = [
    ('Pedido #1042', 'En preparación', Icons.pending_actions),
    ('Pedido #1041', 'Entregado', Icons.check_circle_outline),
    ('Pedido #1040', 'Pendiente', Icons.schedule),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Panel de administración'),
        backgroundColor: AppColors.cardBg,
        foregroundColor: AppColors.textPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Resumen de hoy',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 14),
          for (final item in _summary)
            Card(
              color: AppColors.cardBg,
              margin: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppColors.background,
                  child: Icon(item.$3, color: AppColors.primaryLight),
                ),
                title: Text(
                  item.$1,
                  style: const TextStyle(color: AppColors.textMuted),
                ),
                trailing: Text(
                  item.$2,
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          const SizedBox(height: 14),
          const Text(
            'Actividad reciente',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          for (final item in _activity)
            Card(
              color: AppColors.cardBg,
              margin: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                leading: Icon(item.$3, color: AppColors.primaryLight),
                title: Text(
                  item.$1,
                  style: const TextStyle(color: AppColors.textPrimary),
                ),
                trailing: Text(
                  item.$2,
                  style: const TextStyle(color: AppColors.textMuted),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
