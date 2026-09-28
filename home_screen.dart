import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../data/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => ListView(padding: const EdgeInsets.all(20), children: [
    const Text('services.', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800, color: Color(0xFF6554D9))),
    const SizedBox(height: 18),
    Container(padding: const EdgeInsets.all(22), decoration: BoxDecoration(color: const Color(0xFF6554D9), borderRadius: BorderRadius.circular(24)), child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Что вам нужно сегодня?', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
      SizedBox(height: 8), Text('Товары и услуги рядом с вами', style: TextStyle(color: Colors.white70)),
    ])),
    const SizedBox(height: 20),
    const Text('Популярные услуги', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    const SizedBox(height: 10),
    ...demoItems.map((item) => Card(child: ListTile(
      leading: CircleAvatar(backgroundColor: const Color(0xFFECE9FF), child: Text(item.emoji, style: const TextStyle(fontSize: 22))),
      title: Text(item.title), subtitle: Text('⭐ ${item.rating} · ${item.category}'),
      trailing: Text('${item.price} zł', style: const TextStyle(fontWeight: FontWeight.bold)),
      onTap: () => context.push('/service/${item.id}'),
    ))),
  ]);
}
