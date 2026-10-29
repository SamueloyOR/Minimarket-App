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
              profileDescription: "Usuario",
              description: 'Explora Ofertas relampago, productos frescos de granja y ratrea tus pedidos.',
              icon: Icons.shopping_basket_outlined,
              footerbar: "Entrega en promedio",
              iconFooter: Icons.flash_on_outlined,
            ),
            const SizedBox(height: 12),
            _profileOption(
              profile: 'Trabajador',
              profileDescription: 'Logica y Bodega',
              description: 'Gestiona ordenes por armar, escaneo de SKU ne bodega y rutas en entrada activas.',
              icon: Icons.storefront_outlined,
              footerbar: "Herramientas a tu disposicion",
              iconFooter: Icons.qr_code_outlined
            ),
            const SizedBox(height: 12),
            _profileOption(
              profile: "Admin",
              profileDescription: "Administra productos y BI",
              description: "Metricas de ventas, inventario en tiempo real, gestion de personal y consfiguracon.",
              icon: Icons.shield_outlined,
              footerbar: 'Requiere Autenticacion',
              iconFooter: Icons.shield_sharp
            )
          ],
        ),
      ),
    );
  }

  Widget _profileOption({
    required String profile,
    required String profileDescription,
    required String description,
    required IconData icon,
    required IconData iconFooter,
    required String footerbar
  }) {
    final isSelected = _selectedProfile == profile;
    final cardShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(
        color: isSelected ? AppColors.primaryLight : AppColors.border,
        width: isSelected ? 1 : 1,
      ),
    );

    return Card(
      color: isSelected ? AppColors.inputBg : AppColors.inputBg,
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
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: isSelected ? 5 : 0,
                decoration: BoxDecoration(
                  color: AppColors.primaryLight,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.background : AppColors.background,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Icon(icon, size: 22, color: isSelected ? AppColors.primaryLight : AppColors.textMuted ),
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
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          profileDescription,
                          style: TextStyle(
                            color: isSelected ? AppColors.primaryLight : AppColors.textMuted,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          description,
                          style: const TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: <Widget>[
                            Icon(
                              iconFooter,
                              size: 14,
                              color: isSelected ? AppColors.primaryLight : AppColors.textMuted,
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                footerbar,
                                style: const TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                  Icon(
                    isSelected ? Icons.check_circle : Icons.circle_outlined,
                    color: isSelected
                        ? AppColors.primaryLight
                        : AppColors.border,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
