import 'package:flutter/material.dart';
import 'package:muslimas_project/main_pages/bought_things_cart_page.dart';
import 'package:muslimas_project/main_pages/liked_items_page.dart';
import 'package:muslimas_project/main_pages/my_fantastic_page.dart';
import 'package:muslimas_project/main_pages/product_lists.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          ProductsPage(),
          WoWPage(),
          MyOwnFantasticPage(),
          MyFabulousCart(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red, // Set the selected item color to red
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
