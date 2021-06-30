import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;

  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.shape,
            border: Border.fromBorderSide(BorderSide(color: AppColors.stroke)),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Image.asset(
              AppImages.google,
              alignment: AlignmentDirectional.center,
            ),
            VerticalDivider(
              width: 30,
              thickness: 1,
              color: AppColors.stroke,
            ),
            Container(
              child: Expanded(
                child: Text(
                  "Entrar com Google",
                  style: AppTextStyles.buttonGray,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
