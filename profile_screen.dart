import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override Widget build(BuildContext context) => ListView(padding: const EdgeInsets.all(20), children: [
    const Text('Профиль', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
    const SizedBox(height: 18),
    const CircleAvatar(radius: 38, child: Icon(Icons.person, size: 38)),
    const Center(child: Text('Гость SERVICES', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
    const SizedBox(height: 18),
    FilledButton(onPressed: () {}, child: const Text('Войти / Регистрация')),
    const Card(child: Column(children: [
      ListTile(leading: Icon(Icons.receipt_long), title: Text('Мои заказы'), trailing: Icon(Icons.chevron_right)),
      ListTile(leading: Icon(Icons.favorite_border), title: Text('Избранное'), trailing: Icon(Icons.chevron_right)),
      ListTile(leading: Icon(Icons.storefront), title: Text('Кабинет продавца'), trailing: Icon(Icons.chevron_right)),
      ListTile(leading: Icon(Icons.admin_panel_settings), title: Text('Панель администратора'), trailing: Icon(Icons.chevron_right)),
      ListTile(leading: Icon(Icons.settings), title: Text('Настройки'), trailing: Icon(Icons.chevron_right)),
    ])),
  ]);
}
