import 'package:ecommence_app/components/cart_tile.dart';
import 'package:ecommence_app/models/cart.dart';
import 'package:ecommence_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Consumer<Cart>(
        builder: (context, value, child) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Cart",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: value.getCart().length,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getCart()[index];
                    return CartTile(shoe: shoe);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
