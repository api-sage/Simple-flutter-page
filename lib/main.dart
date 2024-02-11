import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        body: DetailsScreen()
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailHeaderComponent(),
            SizedBox(height: 10.0),
            CoffeeImageComponent(),
            SizedBox(height: 10.0),
            CoffeeNameComponent(),
            CoffeeDescriptionComponent(),
            RatingComponent(),
            DescriptionComponent(),
            DescriptionTextComponent(),
            SizeComponent(),
            CoffeeSizeComponent(),
            PriceComponent(),
          ],
        ),
      ),
    );
  }
}

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('scratch'),
      backgroundColor: Colors.grey,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class DetailHeaderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [Image.asset("assets/images/arrow_left.jpg")]),
        Column(
          children: [
            Text(
              "Detail",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: "Sora",
              ),
            )
          ],
        ),
        Column(children: [Image.asset("assets/images/heart.jpg")]),
      ],
    );
  }
}

class CoffeeImageComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13.0),
      child: Image.asset(
        "assets/images/coffee_img.jpg",
        width: 250.0,
      ),
    );
  }
}

class CoffeeNameComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Row(
        children: [
          Text(
            "Cappuccino",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              fontFamily: "Sora",
            ),
          )
        ],
      ),
    );
  }
}