import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'features/home/home_screen.dart';
import 'features/catalog/catalog_screen.dart';
import 'features/service/service_detail_screen.dart';
import 'features/orders/order_screen.dart';
import 'features/chat/chat_screen.dart';
import 'features/profile/profile_screen.dart';
import 'shared/app_shell.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => AppShell(child: child),
      routes: [
        GoRoute(path: '/', builder: (_, __) => const HomeScreen()),
        GoRoute(path: '/catalog', builder: (_, __) => const CatalogScreen()),
        GoRoute(path: '/service/:id', builder: (_, s) => ServiceDetailScreen(id: s.pathParameters['id']!)),
        GoRoute(path: '/orders', builder: (_, __) => const OrderScreen()),
        GoRoute(path: '/chat', builder: (_, __) => const ChatScreen()),
        GoRoute(path: '/profile', builder: (_, __) => const ProfileScreen()),
      ],
    ),
  ],
);

class ServicesApp extends StatelessWidget {
  const ServicesApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp.router(
    title: 'SERVICES',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6554D9)),
      scaffoldBackgroundColor: const Color(0xFFF7F7FB),
      useMaterial3: true,
      cardTheme: const CardThemeData(elevation: 0, color: Colors.white),
    ),
    routerConfig: router,
  );
}
