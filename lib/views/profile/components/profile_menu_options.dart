import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';
import 'profile_list_tile.dart';

class ProfileMenuOptions extends StatelessWidget {
  const ProfileMenuOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefaults.padding),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppDefaults.boxShadow,
        borderRadius: AppDefaults.borderRadius,
      ),
      child: Column(
        children: [
          ProfileListTile(
            title: 'My Profile',
            icon: AppIcons.profilePerson,
            onTap: () => Navigator.pushNamed(context, AppRoutes.profileEdit),
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'About Us',
            icon: AppIcons.profileNotification,
            onTap: () => Navigator.pushNamed(context, AppRoutes.aboutUs),
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'Terms & Condition',
            icon: AppIcons.profileSetting,
            onTap: () =>
                Navigator.pushNamed(context, AppRoutes.termsAndConditions),
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'Payment',
            icon: AppIcons.profilePayment,
            onTap: () => Navigator.pushNamed(context, AppRoutes.paymentMethod),
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'Logout',
            icon: AppIcons.profileLogout,
            onTap: () => Navigator.pushNamed(context, AppRoutes.login),
          ),
        ],
      ),
    );
  }
}
