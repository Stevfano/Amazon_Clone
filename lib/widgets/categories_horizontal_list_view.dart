import 'package:amazon_clone/screens/results_screen.dart';
import 'package:amazon_clone/utils/constants.dart';
import 'package:flutter/material.dart';

class CategoriesHorizontalListView extends StatelessWidget {
  const CategoriesHorizontalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kScrollHeight,
      width: double.infinity,
      color: Colors.white,
      child: ListView.builder(
        itemCount: categoriesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              query: categoriesList[index],
            ),
          ),
        );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        categoryLogos[index],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(categoriesList[index]),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
