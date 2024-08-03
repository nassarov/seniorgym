import 'package:flutter/material.dart';
import '6coachWeightGainBreakfastSuggestionsPage.dart'; // Import the breakfast suggestion page
import '7coachWeightGainLunchSuggestionsPage.dart'; // Import the lunch suggestion page
import '8coachWeightGainDinnerSuggestionsPage.dart'; // Import the dinner suggestion page

class WeightGainMealOptionsPage extends StatelessWidget {
  String ID;

  WeightGainMealOptionsPage(this.ID);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weight Gain Meals',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Navigate to the breakfast suggestion page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BreakfastSuggestionsPage(ID)),
                );
              },
              child: ElevatedButton(
                onPressed: null, // Since we are using GestureDetector for onTap, onPressed should be null
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/weightGainBreakfast.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Breakfast',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navigate to the lunch suggestion page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LunchSuggestionsPage(ID)),
                );
              },
              child: ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/weightGainLunch.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Lunch',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navigate to the dinner suggestion page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DinnerSuggestionsPage(ID)),
                );
              },
              child: ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/weightGainDinner.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Dinner',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
