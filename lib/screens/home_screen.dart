import 'package:alqasam/screens/videos_screen.dart';
import 'package:alqasam/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        textDirection: TextDirection.rtl,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HeaderWidget(), // Header Widget added
          const SizedBox(
              height: 20), // Adding some space between header and card
          _buildCard(),
        ],
      ),
    );
  }

  Widget _buildCard() {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/1.jpg',
            width: double.infinity,
            height: 150.0,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'اليوم ال 136 اسقاط طائرة مسيرة',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.remove_red_eye),
                  SizedBox(width: 2.0),
                  Text(' 1000 '),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.share),
                  SizedBox(width: 2.0),
                ],
              ),
            ],
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Published Date',
              style: TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      // width: 350,
      padding: const EdgeInsets.all(16.0),
      color: TColors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 8.0), // Adding some space between title and date
                Row(
                  children: [
                    Text(
                      '20 - 2 - 2024  ',
                      // Example date
                      style: TextStyle(
                          fontSize: 16.0,
                          color: TColors.white,
                          fontFamily: 'Foda'),
                    ),
                    Icon(
                      Icons.calendar_month,
                      color: TColors.white,
                      size: 14,
                    ),
                  ],
                ),
                Text(
                  'اضغط للمشاهدة 🔻',
                  // Example date
                  style: TextStyle(
                      fontSize: 16.0, color: TColors.white, fontFamily: 'Foda'),
                ),
              ]),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('behind.png'))),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start, // \n
              children: [
                Text(
                  'ذاكرة', // First line of the title
                  style: TextStyle(
                      fontSize: 36, color: TColors.white, fontFamily: 'Foda'),
                ),
                Text(
                  'القسام', // Second line of the title
                  style: TextStyle(
                      fontSize: 36,
                      color: TColors.white,
                      fontFamily: 'Foda',
                      height: 0.2),
                ),
              ],
            ),
          ),
          Column(),
        ],
      ),
    );
  }
}
