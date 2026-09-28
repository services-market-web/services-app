import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final index = switch (GoRouterState.of(context).uri.path) {
      '/catalog' || '/service' => 1,
      '/orders' => 2,
      '/chat' => 3,
      '/profile' => 4,
      _ => 0,
    };
    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (i) => context.go(['/', '/catalog', '/orders', '/chat', '/profile'][i]),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Главная'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Каталог'),
          NavigationDestination(icon: Icon(Icons.receipt_long), label: 'Заказы'),
          NavigationDestination(icon: Icon(Icons.chat_bubble_outline), label: 'Чат'),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Профиль'),
        ],
      ),
    );
  }
}
