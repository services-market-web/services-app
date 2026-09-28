import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});
  @override State<OrderScreen> createState() => _OrderScreenState();
}
class _OrderScreenState extends State<OrderScreen> {
  DateTime date = DateTime.now().add(const Duration(days: 1));
  bool confirmed = false;
  @override Widget build(BuildContext context) => ListView(padding: const EdgeInsets.all(20), children: [
    const Text('Бронирование', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
    const SizedBox(height: 12),
    Card(child: ListTile(leading: const Icon(Icons.cleaning_services), title: const Text('Уборка квартиры'), subtitle: Text('Дата: ${date.day}.${date.month}.${date.year}'), trailing: const Text('150 zł'))),
    CalendarDatePicker(initialDate: date, firstDate: DateTime.now(), lastDate: DateTime.now().add(const Duration(days: 180)), onDateChanged: (d) => setState(() { date = d; confirmed = false; })),
    const Text('Способ оплаты', style: TextStyle(fontWeight: FontWeight.bold)),
    const Card(child: RadioListTile(value: 'card', groupValue: 'card', onChanged: null, title: Text('Банковская карта'))),
    const Card(child: RadioListTile(value: 'blik', groupValue: 'card', onChanged: null, title: Text('BLIK'))),
    FilledButton(onPressed: () => setState(() => confirmed = true), child: const Text('Подтвердить заказ')),
    if (confirmed) const Text('Заказ сохранён локально в демо. Подключите backend для реального бронирования.', style: TextStyle(color: Colors.green)),
  ]);
}
