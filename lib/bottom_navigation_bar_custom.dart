import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 20),
          _menu(Icons.home, "Acceuil", () => Navigator.pushNamed(context, "/")),
          _menu(
            Icons.search,
            "Recherche",
            () => Navigator.pushNamed(context, "/search"),
          ),
          _menu(
            Icons.favorite_border, // favorite_border, favorite
            "Favorite",
            () => Navigator.pushNamed(context, "/favorite"),
          ),
          _menu(
            Icons.message_outlined, // message_outlined, message
            "Message",
            () => Navigator.pushNamed(context, "/message"),
          ),
          _menu(
            Icons.person_2_outlined, // person_2_outlined, person_2
            "Profil",
            () => Navigator.pushNamed(context, "/profile"),
          ),
        ],
      ),
    );
  }

  Widget _menu(IconData icon, String title, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 25, color: Colors.black),
            Text(title),
          ],
        ),
      ),
    );
  }
}
