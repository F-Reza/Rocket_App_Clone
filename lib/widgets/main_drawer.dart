
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/login_page.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            height: 200,
            color: const Color(0xFF8c3494),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    child: Image.asset('images/logo.png', width: 120, fit: BoxFit.fitWidth),
                  ),
                  const SizedBox(height: 10,),
                  const Text('Rocket',
                    style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold),),
                  const Text('Dutch-Bangla Bank Ltd.',
                    style: TextStyle(fontSize: 16,color: Colors.white),),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName),
            leading: const Icon(Icons.currency_exchange,),
            title: const Text('Remittance'),
          ),
          ListTile(
            onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName),
            leading: const Icon(Icons.money,),
            title: const Text('balance Inquiry'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, LoginPage.routeName),
            leading: const Icon(Icons.logout,),
            title: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
