import 'package:ecommence_app/models/shoe.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Shoetilecard extends StatelessWidget {
  void Function()? onTap;
  final Shoe shoe; //importing shoe model
  Shoetilecard({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[600],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 5,
        children: [
          //shoe image
          AspectRatio(aspectRatio: 1, child: Image.asset(shoe.imageUrl)),

          //decription
          Text(
            shoe.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          Text(
            shoe.category,
            style: const TextStyle(fontSize: 16, color: Colors.white70),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              textAlign: TextAlign.center,
              shoe.description,
              style: const TextStyle(fontSize: 12, color: Colors.white70),
            ),
          ),

          const Spacer(), //to push price and button to bottom
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    '\$${shoe.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                //add to cart button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    margin: const EdgeInsets.only(right: 15.0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //price+description
          //add to cart button
        ],
      ),
    );
  }
}
