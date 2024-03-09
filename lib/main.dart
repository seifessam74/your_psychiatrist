import 'package:flutter/material.dart';
import 'package:your_psychiatrist/core/routing/app_router.dart';
import 'psychiatrist.dart';

void main() {
  runApp(
    Psychiatrist(
      appRouter: AppRouter(),
    ),
  );
}
