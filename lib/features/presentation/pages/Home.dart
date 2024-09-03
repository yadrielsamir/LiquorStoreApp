import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.orange[700],
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const TextStyle(
          fontSize: 13.0,
          color: Colors.white,
          letterSpacing: 1.0,
        );
      }
      return const TextStyle(
        fontSize: 13.0,
        color: Colors.grey,
        letterSpacing: 1.0,
      );
    })),
        child: NavigationBar(
          backgroundColor: Colors.black,
            destinations: const <Widget> [
              NavigationDestination(
                selectedIcon: Icon(Icons.home, color: Colors.white, size: 30),
                icon: Icon(Icons.home_outlined, color: Colors.grey, size: 30),
                label: "Home",
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.inventory, color: Colors.white, size: 30),
                icon: Icon(Icons.inventory_outlined, color: Colors.grey, size: 30),
                label: "Products",
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.favorite, color: Colors.white, size: 30),
                icon: Icon(Icons.favorite_outline, color: Colors.grey, size: 30,),
                label: "Favorites",
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.person, color: Colors.white, size: 30),
                icon: Icon(Icons.person_outline, color: Colors.grey, size: 30),
                label: "Settings",
              )
            ]),
      ),
      backgroundColor: Colors.white,
      appBar:  AppBar(
        title:  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Text('La Licorería', style: GoogleFonts.breeSerif(fontWeight: FontWeight.w700, color: Colors.white)),
                Image.asset('assets/bottle.png'),

                const SizedBox(width: 140,),
                const Icon(Icons.search, size: 35, color: Colors.white,),
                const SizedBox(width: 15,),
                const Icon(Icons.shopping_cart_outlined, size: 35, color: Colors.white,),

              ],
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 250.0, autoPlay: true, autoPlayInterval: const Duration(seconds: 6),),
            items: [1,2,3,4,5].map((index) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.orange
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Photo" " $index", style: TextStyle(fontSize: 30),),
                          Image.asset('assets/bottle.png'),
                        ],
                      )
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
