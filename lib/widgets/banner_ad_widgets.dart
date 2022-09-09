import 'package:amazon_clone/utils/color_themes.dart';
import 'package:amazon_clone/utils/constants.dart';
import 'package:amazon_clone/utils/utils.dart';
import 'package:flutter/material.dart';

class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({Key? key}) : super(key: key);

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  int currentAd = 0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return GestureDetector(
      onHorizontalDragEnd: (_) {
        if (currentAd == (largeAds.length - 1)) {
          currentAd = -1;
        }
        setState(() {
          currentAd++;
        });
      },
      child: Column(
        children: [
          //Image with column
          Stack(
            children: [
              Image.network(
                largeAds[currentAd],
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.1,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        backgroundColor,
                        backgroundColor.withOpacity(0),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: backgroundColor,
            width: screenSize.width,
            height: screenSize.height/5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getSmallAdsFromIndex(0, screenSize.height*0.13),
                getSmallAdsFromIndex(1, screenSize.height*0.13),
                getSmallAdsFromIndex(2, screenSize.height*0.13),
                getSmallAdsFromIndex(3, screenSize.height*0.13),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getSmallAdsFromIndex(int index, double height) {
    return Container(
      height: height,
      width: height*0.8,
      decoration: ShapeDecoration(
        color: Colors.white,
        shadows: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(smallAds[index]),
            const SizedBox(height: 5),
            Text(adItemNames[index]),
          ],
        ),
      ),
    );
  }
}
