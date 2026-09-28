import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../data/models.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});
  @override State<CatalogScreen> createState() => _CatalogScreenState();
}
class _CatalogScreenState extends State<CatalogScreen> {
  String query = '';
  @override
  Widget build(BuildContext context) {
    final items = demoItems.where((x) => x.title.toLowerCase().contains(query.toLowerCase()) || x.category.toLowerCase().contains(query.toLowerCase()));
    return ListView(padding: const EdgeInsets.all(20), children: [
      const Text('Каталог', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
      const SizedBox(height: 14),
      TextField(decoration: const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Поиск товаров и услуг', filled: true, border: OutlineInputBorder(borderSide: BorderSide.none)), onChanged: (v) => setState(() => query = v)),
      const SizedBox(height: 12),
      ...items.map((x) => Card(child: ListTile(leading: Text(x.emoji, style: const TextStyle(fontSize: 26)), title: Text(x.title), subtitle: Text(x.category), trailing: Text('${x.price} zł'), onTap: () => context.push('/service/${x.id}')))),
    ]);
  }
}
