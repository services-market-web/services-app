import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../data/models.dart';

class ServiceDetailScreen extends StatelessWidget {
  const ServiceDetailScreen({super.key, required this.id});
  final String id;
  @override Widget build(BuildContext context) {
    final item = demoItems.firstWhere((x) => x.id == id, orElse: () => demoItems.first);
    return ListView(padding: const EdgeInsets.all(20), children: [
      Text(item.emoji, style: const TextStyle(fontSize: 72)),
      Text(item.title, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
      Text('⭐ ${item.rating} · Проверенный исполнитель', style: const TextStyle(color: Colors.black54)),
      const SizedBox(height: 18),
      Text(item.description, style: const TextStyle(fontSize: 16)),
      const SizedBox(height: 18),
      Text('От ${item.price} zł', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF6554D9))),
      const SizedBox(height: 20),
      FilledButton(onPressed: () => context.push('/orders'), child: const Text('Забронировать')),
      OutlinedButton(onPressed: () => context.push('/chat'), child: const Text('Написать продавцу')),
      const ListTile(leading: Icon(Icons.star, color: Colors.amber), title: Text('Отзывы'), subtitle: Text('Отзывы и рейтинг будут загружаться из API.')),
    ]);
  }
}
