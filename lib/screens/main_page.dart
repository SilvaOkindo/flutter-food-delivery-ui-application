import 'package:flutter/material.dart';
import 'package:foodie_ui/screens/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  // navigation
  
  int _selectedIndex = 0;
  
  static List<Widget> pages = [
    const HomePage(),
    Container(color: Colors.green,),
    Container(color: Colors.red,),
    Container(color: Colors.purple,),
  ];
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, size: 30,),
            label: 'home'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart, size: 30,),
            label: 'cart'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30,),
            label: 'proofile'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add_rounded, size: 30,),
            label: 'notification'
          )
        ],
      ),
    );
  }
}
