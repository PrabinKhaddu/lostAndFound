import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_defaults.dart';
import 'components/sign_up_form.dart';
import 'components/sign_up_page_header.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldWithBoxBackground,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(alignment: Alignment.center, child: SignUpPageHeader()),
                SizedBox(height: AppDefaults.padding),
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
