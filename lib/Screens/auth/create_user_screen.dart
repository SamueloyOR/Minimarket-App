import 'package:flutter/material.dart';
import 'package:minimarket_app/app_colors.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({super.key});

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  String? _selectedProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'Role Selection',
          style: TextStyle(letterSpacing: -1.2, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.cardBg,
        foregroundColor: AppColors.textPrimary,

        centerTitle: true,
        elevation: 0,

        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              icon: const Icon(Icons.person_outlined),
              style: OutlinedButton.styleFrom(
                iconColor: AppColors.primaryLight,
                iconSize: 20,
                backgroundColor: AppColors.inputBg,
                side: BorderSide(color: AppColors.primary, width: 1),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'MINIMARKET ID',
              style: TextStyle(
                color: AppColors.primaryLight,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Selecciona tu tipo de perfil.',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Selecciona tu tipo de perfil para ofrecerte la experiencia adecuada.',
              style: TextStyle(color: AppColors.textMuted, fontSize: 13),
            ),
            const SizedBox(height: 20),
            _profileOption(
              profile: 'Cliente',
              description: 'Explora y compra productos.',
              icon: Icons.shopping_basket_outlined,
            ),
            const SizedBox(height: 12),
            _profileOption(
              profile: 'Administrador',
              description: 'Administra tu minimarket.',
              icon: Icons.storefront_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileOption({
    required String profile,
    required String description,
    required IconData icon,
  }) {
    final isSelected = _selectedProfile == profile;
    final cardShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(
        color: isSelected ? AppColors.primaryLight : AppColors.border,
        width: isSelected ? 2 : 1,
      ),
    );

    return Card(
      color: AppColors.inputBg,
      elevation: isSelected ? 5 : 1,
      shadowColor: AppColors.shadow,
      margin: EdgeInsets.zero,
      shape: cardShape,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedProfile = profile;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primary : AppColors.background,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.border),
                ),
                child: Icon(icon, size: 22, color: AppColors.textPrimary),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      profile,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: const TextStyle(
                        color: AppColors.textMuted,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                isSelected ? Icons.check_circle : Icons.circle_outlined,
                color: isSelected
                    ? AppColors.primaryLight
                    : AppColors.textMuted,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
