import 'package:flutter/material.dart';
import '../models/product.dart';

class DetailPage extends StatefulWidget {
  final Product product;

  const DetailPage({required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int cartCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.product.title)),
      body: Column(
        children: [
          Image.network(widget.product.image),
          Text(widget.product.description),
          Text("${widget.product.price} ₺"),

          ElevatedButton(
            onPressed: () {
              setState(() {
                cartCount++;
              });
            },
            child: Text("Sepete Ekle ($cartCount)"),
          )
        ],
      ),
    );
  }
}