import 'package:ecommence_app/components/shoetilecard.dart';
import 'package:ecommence_app/models/cart.dart';
import 'package:ecommence_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //function when shoe tile is tapped
  void onTap(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[200],
        title: const Text('Added to Cart'),
        content: Text('${shoe.name} has been added to your cart.'),
        actions: [
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.grey[900]!),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Consumer<Cart>(
        builder: (context, value, child) => Column(
          spacing: 10,
          //search bar
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey[900], fontSize: 16),
                  ),
                  Icon(Icons.search, color: Colors.grey[900]),
                ],
              ),
            ),

            //message
            Text(
              'Every One Flies, Some Fly Longer Than Others.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),

            //hot pics
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //text 01
                  Text(
                    'Hot Picks 🔥',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                    ),
                  ),

                  //see all
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 500,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.getshoelist().length,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getshoelist()[index];
                  return Shoetilecard(shoe: shoe, onTap: () => onTap(shoe));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
