import 'package:flutter/material.dart';
import 'package:minimarket_app/app_colors.dart';

class WorkerScreen extends StatelessWidget {
  const WorkerScreen({super.key});

  static const _orders = [
    (
      'Pedido #1042',
      '3 productos · Hace 5 min',
      'Pendiente',
      Icons.pending_actions,
    ),
    (
      'Pedido #1041',
      '5 productos · Hace 18 min',
      'En preparación',
      Icons.inventory_2_outlined,
    ),
    (
      'Pedido #1040',
      '2 productos · Hace 32 min',
      'Listo para entrega',
      Icons.check_circle_outline,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Panel de trabajador'),
        backgroundColor: AppColors.cardBg,
        foregroundColor: AppColors.textPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Órdenes del día',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Vista de ejemplo de pedidos recientes',
            style: TextStyle(color: AppColors.textMuted),
          ),
          const SizedBox(height: 18),
          for (final order in _orders)
            Card(
              color: AppColors.cardBg,
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                contentPadding: const EdgeInsets.all(14),
                leading: CircleAvatar(
                  backgroundColor: AppColors.background,
                  child: Icon(order.$4, color: AppColors.primaryLight),
                ),
                title: Text(
                  order.$1,
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    '${order.$2}\n${order.$3}',
                    style: const TextStyle(
                      color: AppColors.textMuted,
                      height: 1.5,
                    ),
                  ),
                ),
                isThreeLine: true,
              ),
            ),
        ],
      ),
    );
  }
}
