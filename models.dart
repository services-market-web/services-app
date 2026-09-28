class MarketplaceItem {
  const MarketplaceItem({required this.id, required this.title, required this.category, required this.description, required this.price, required this.rating, required this.emoji});
  final String id, title, category, description, emoji;
  final int price;
  final double rating;
}

const demoItems = [
  MarketplaceItem(id:'cleaning', title:'Уборка квартиры', category:'Дом', description:'Профессиональная уборка с инвентарём. Выберите удобное время и подтвердите заказ.', price:150, rating:4.9, emoji:'🧹'),
  MarketplaceItem(id:'barber', title:'Мужская стрижка', category:'Красота', description:'Стрижка и укладка у проверенного мастера.', price:80, rating:4.8, emoji:'💈'),
  MarketplaceItem(id:'repair', title:'Ремонт смартфона', category:'Ремонт', description:'Диагностика и ремонт смартфонов. Итоговая стоимость после осмотра.', price:120, rating:4.9, emoji:'📱'),
  MarketplaceItem(id:'flowers', title:'Букет цветов', category:'Товары', description:'Свежие сезонные цветы с доставкой.', price:99, rating:5.0, emoji:'💐'),
];
