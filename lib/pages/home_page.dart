import 'package:ecommence_app/components/nav_bar.dart';
import 'package:ecommence_app/pages/cart_page.dart';
import 'package:ecommence_app/pages/intro_page.dart';
import 'package:ecommence_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //function that controls the navigation tab bar
  int selectedIndex = 0;
  void onTabChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //pages list
  final List<Widget> pages = [ShopPage(), CartPage()];

  //logout function
  void onTapLogout() {
    Navigator.pop(context); // close drawer

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const IntroPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text('N I K E'),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: Scaffold.of(context).openDrawer,
              icon: Icon(Icons.menu, color: Colors.grey[900]),
            );
          },
        ),
      ),
      drawer: Drawer(
        shape: Border.symmetric(
          vertical: BorderSide(color: Colors.grey[900]!, width: 2),
          horizontal: BorderSide(color: Colors.grey[900]!, width: 2),
        ),
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset(
                        'lib/assets/nikelogo.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.home, color: Colors.white),
                    ),
                    title: const Text(
                      'H O M E',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      onTabChanged(0);
                      Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.info, color: Colors.white),
                    ),
                    title: const Text(
                      'A B O U T',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      onTabChanged(1);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),

            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.logout, color: Colors.white),
              ),
              title: const Text(
                'L O G O U T',
                style: TextStyle(color: Colors.white),
              ),
              onTap: onTapLogout,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(onTabChange: onTabChanged),
      body: pages[selectedIndex],
    );
  }
}
