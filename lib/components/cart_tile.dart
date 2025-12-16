import 'package:ecommence_app/models/cart.dart';
import 'package:ecommence_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartTile extends StatelessWidget {
  final Shoe shoe;
   CartTile({super.key, required this.shoe});



  void removeitem(BuildContext context){
    Provider.of<Cart>(context, listen: false).removeFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[600],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Image.asset(
          shoe.imageUrl,
          width: 50,
          height: 50,
        ),
        title: Text(shoe.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        subtitle: Text('\$${shoe.price.toStringAsFixed(2)}',
            style: const TextStyle(
              color: Colors.white,
            )),
        trailing:IconButton(
        onPressed: () => removeitem(context), 
        icon: Icon(Icons.delete, color: Colors.white,))
      
      ),
    );
  }
}