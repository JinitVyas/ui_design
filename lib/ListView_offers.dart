
import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  // Arrays of items for the two lists
  final List<String> todaysOffers = [
    "50% off on Shoes",
    "Free Shipping on Orders over \$50",
    "Buy 1 Get 1 Free - T-Shirts",
    "20% off on Electronics",
    "Special Discount on Groceries",
  ];

  final List<String> topOffers = [
    "Mega Sale - Up to 70% off",
    "Exclusive Offer on Laptops",
    "Flash Sale - Limited Time Only",
    "Best Deals on Furniture",
    "Top Picks for Smart Watches",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offers Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Title for Today's Offers
            Text(
              'Today\'s Offers',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Today's Offers List
            ListView.separated(
              shrinkWrap: true, // Ensures it doesn't take up more space than necessary
              physics: NeverScrollableScrollPhysics(), // Disables scrolling of the list itself
              itemCount: todaysOffers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.local_offer),
                  title: Text(todaysOffers[index]),
                );
              },
              separatorBuilder: (context, index) => Divider(),
            ),
            SizedBox(height: 16), // Space between the two lists
            // Divider between Today's Offers and Top Offers
            Divider(),
            SizedBox(height: 16),
            // Title for Top Offers
            Text(
              'Top Offers',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Top Offers List
            ListView.separated(
              shrinkWrap: true, // Ensures it doesn't take up more space than necessary
              physics: NeverScrollableScrollPhysics(), // Disables scrolling of the list itself
              itemCount: topOffers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.star),
                  title: Text(topOffers[index]),
                );
              },
              separatorBuilder: (context, index) => Divider(),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: OffersScreen(),
  ));
}
