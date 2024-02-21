import 'package:alqasam/utils/constants/colors.dart';
import 'package:alqasam/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: TColors.primary,
            ),
            child: Center(
              child: Text(
                "قسم الأسلحة",
                style: TextStyle(
                    color: TColors.light,
                    fontSize: 45,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
