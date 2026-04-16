import 'package:flutter/material.dart';
import 'package:furnicraft_aap/styling/app_assets.dart';
import 'package:furnicraft_aap/styling/app_colors.dart';
import 'package:furnicraft_aap/widgets/spacing_widget.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 15), () {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.logo,
            width: 180,
          ),
          HeightSpace(height: 16),
          Text(
            "FURNICRAFT",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: AppColors.primaryColor,
            ),
          ),
          HeightSpace(height: 6),
          Text(
            "Furniture Shop",
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 3,
              color: AppColors.primaryColor,
            ),
          ),
          HeightSpace(height: 20),
          Center(
            child: Lottie.asset(
              AppAssets.loadingDots,
              width: 250,
            ),
          ),
        ],
      ),
    );
  }
}