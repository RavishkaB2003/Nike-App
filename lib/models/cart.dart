import 'package:ecommence_app/models/shoe.dart';
import 'package:flutter/foundation.dart';

class Cart extends ChangeNotifier {
  //list of shoes in user cart
  List<Shoe> ShoeShop = [
    Shoe(
      name: 'Nike Air Force 1 07',
      imageUrl: 'lib/assets/img (1).png',
      price: 115.00,
      description:
          'A basketball icon that puts a fresh spin on best-in-class leather and bold colors.',
      category: 'Lifestyle',
    ),

    Shoe(
      name: 'Nike Air Max 270',
      imageUrl: 'lib/assets/img (2).png',
      price: 150.00,
      description:
          "Features Nike's biggest heel Air unit yet for a super-soft ride that feels as impossible as it looks.",
      category: 'Running',
    ),

    Shoe(
      name: 'Nike Dunk Low Retro',
      imageUrl: 'lib/assets/img (3).png',
      price: 115.00,
      description:
          "The '80s b-ball icon returns with classic team colors and crisp leather overlays.",
      category: 'Lifestyle',
    ),

    Shoe(
      name: 'Nike Pegasus 41',
      imageUrl: 'lib/assets/img (4).png',
      price: 140.00,
      description:
          'Responsive daily runner featuring ReactX foam and dual Air Zoom units for extra pop.',
      category: 'Running',
    ),

    Shoe(
      name: 'Nike Air Zoom Alphafly NEXT% 3',
      imageUrl: 'lib/assets/img (5).png',
      price: 285.00,
      description:
          'Marathon speedster with ZoomX foam, a carbon Flyplate, and dual Air Zoom units.',
      category: 'Racing',
    ),

    Shoe(
      name: 'Nike Metcon 9',
      imageUrl: 'lib/assets/img (6).png',
      price: 150.00,
      description:
          'The gold standard for lifting, featuring a wide Hyperlift plate for heavy-duty stability.',
      category: 'Training',
    ),

    Shoe(
      name: 'Nike LeBron XXI',
      imageUrl: 'lib/assets/img (7).png',
      price: 200.00,
      description:
          'Low-profile basketball shoe with Zoom Air cushioning and a cabling system for explosive power.',
      category: 'Basketball',
    ),

    Shoe(
      name: 'Nike Cortez',
      imageUrl: 'lib/assets/img (8).png',
      price: 90.00,
      description:
          'Heritage running shoe turned fashion icon, featuring a timeless leather upper.',
      category: 'Lifestyle',
    ),

    Shoe(
      name: 'Nike Invincible 3',
      imageUrl: 'lib/assets/img (9).png',
      price: 180.00,
      description:
          'Maximum cushioning with thick ZoomX foam to keep you stable and fresh during long runs.',
      category: 'Running',
    ),

    Shoe(
      name: 'Nike Vomero 17',
      imageUrl: 'lib/assets/img (10).png',
      price: 160.00,
      description:
          'High-mileage runner combining ZoomX and Cushlon foams for a soft, springy ride.',
      category: 'Running',
    ),
  ];
  //get list of shoes for sale
  List<Shoe> getshoelist() {
    return ShoeShop;
  }

  //items in the cart
  List<Shoe> cartItems = [];

  //get cart
  List<Shoe> getCart() {
    return cartItems;
  }

  //add shoe from cart
  void addToCart(Shoe shoe) {
    cartItems.add(shoe);
    notifyListeners();
  }

  //remove shoe from cart
  void removeFromCart(Shoe shoe) {
    cartItems.remove(shoe);
    notifyListeners();
  }
}
