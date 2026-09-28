import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override State<ChatScreen> createState() => _ChatScreenState();
}
class _ChatScreenState extends State<ChatScreen> {
  final controller = TextEditingController();
  final messages = <String>['Здравствуйте! Чем могу помочь?'];
  @override void dispose() { controller.dispose(); super.dispose(); }
  @override Widget build(BuildContext context) => Column(children: [
    const ListTile(title: Text('Чат с продавцом', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)), subtitle: Text('Демо-диалог')),
    Expanded(child: ListView(padding: const EdgeInsets.all(16), children: messages.map((m) => Align(alignment: Alignment.centerRight, child: Card(color: const Color(0xFFECE9FF), child: Padding(padding: const EdgeInsets.all(12), child: Text(m))))).toList())),
    SafeArea(top: false, child: Padding(padding: const EdgeInsets.all(12), child: Row(children: [
      Expanded(child: TextField(controller: controller, decoration: const InputDecoration(hintText: 'Сообщение...', border: OutlineInputBorder()))),
      IconButton(icon: const Icon(Icons.send), onPressed: () { if (controller.text.trim().isNotEmpty) setState(() { messages.add(controller.text.trim()); controller.clear(); }); }),
    ]))),
  ]);
}
