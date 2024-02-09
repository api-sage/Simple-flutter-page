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