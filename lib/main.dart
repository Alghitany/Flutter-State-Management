import 'package:flutter/material.dart';
import 'package:week1/app_router.dart';

void main() {
  runApp(GameOfThronesApp(appRouter: AppRouter(),));
}

class GameOfThronesApp extends StatelessWidget {
  const GameOfThronesApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}

