import 'package:flutter/material.dart';
import 'package:islamic_app/provider/product_model.dart';
class Dummy_Product with ChangeNotifier{
  List<Product> _items = [
    Product(
      id:'p1',
      image: 'https://cdn2.stylecraze.com/wp-content/uploads/2013/09/278-Dates-For-Diabetes-534357907.jpg',
      price: 200,
      category: 'Food',
      prePrice: 220,
      quantity: 1,
      quantityType: 'Kg',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Dates',
    ),
    Product(
      id:'p2',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqOR_LI1U5kQ-8qAanOWmQwytFIPida9RehQ&usqp=CAU',
      price: 200,
      category:"Halal Cosmetics & Fragrance",
      prePrice: 220,
      quantity: 0.5,
      quantityType: 'ml',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Ator',
    ),
    Product(
      id:'p3',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqOR_LI1U5kQ-8qAanOWmQwytFIPida9RehQ&usqp=CAU',
      price: 200,
    category: 'Islamic Item',
      prePrice: 220,
      quantity: 150,
      quantityType: 'ml',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Lucy Oliva Olive Oil',
    ),
    Product(
      id:'p4',
      image: 'http://media.islamicity.org/wp-content/uploads/2017/05/iStock-687790102.jpg',
      price: 200,
      prePrice: 220,
      category: 'Islamic Item',
      quantity: 1,
      quantityType: 'Kg',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Food',
    ),
    Product(
      id:'p5',
        price: 200,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1WZI3dl2s8iHos1eLZHQVgllYWP59vq-nFQ&usqp=CAU',
        prePrice: 220,
      quantity: 1,
      quantityType: 'pieces',
      title: 'Khemar',
        detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      category: 'Modest Dress'
    ),
  ];
  List<Product> get items {
    return [..._items];
  }
  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}

