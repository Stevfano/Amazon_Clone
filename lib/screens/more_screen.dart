import 'package:amazon_clone/utils/constants.dart';
import 'package:amazon_clone/widgets/category_widget.dart';
import 'package:amazon_clone/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(isReadonly: true, hasBackButton: false),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2.2 / 3.9,
            mainAxisSpacing: 15, crossAxisSpacing: 10
          ),
          itemCount: categoriesList.length,
          itemBuilder: (BuildContext context, int index) => CategoryWidget(
            index: index,
          ),
        ),
      ),
    );
  }
}
