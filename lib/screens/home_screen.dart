import 'package:amazon_clone/resources/cloudfirestore_methods.dart';
import 'package:amazon_clone/utils/constants.dart';
import 'package:amazon_clone/widgets/banner_ad_widgets.dart';
import 'package:amazon_clone/widgets/categories_horizontal_list_view.dart';
import 'package:amazon_clone/widgets/loading_widget.dart';
import 'package:amazon_clone/widgets/products_showcase.dart';
import 'package:amazon_clone/widgets/search_bar_widget.dart';
import 'package:amazon_clone/widgets/user_details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();
  double offset = 0;
  List<Widget>? discount70;
  List<Widget>? discount60;
  List<Widget>? discount50;
  List<Widget>? discount0;

  @override
  void initState() {
    super.initState();
    getData();
    controller.addListener(() {
      setState(() {
        offset = controller.position.pixels;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void getData() async {
    List<Widget> temp70 =
        await CloudFirestoreMethods().getProductFromDiscount(70);
    List<Widget> temp60 =
        await CloudFirestoreMethods().getProductFromDiscount(60);
    List<Widget> temp50 =
        await CloudFirestoreMethods().getProductFromDiscount(50);
    List<Widget> temp0 =
        await CloudFirestoreMethods().getProductFromDiscount(0);

    setState(() {
      discount70 = temp70;
      discount60 = temp60;
      discount50 = temp50;
      discount0 = temp0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(isReadonly: true, hasBackButton: false),
      body: discount70 != null &&
              discount60 != null &&
              discount50 != null &&
              discount0 != null
          ? Stack(
              children: [
                SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    children: [
                      SizedBox(height: kAppBarHeight / 2),
                      CategoriesHorizontalListView(),
                      BannerAdWidget(),
                      ProductsShowcase(
                          title: "Upto 70% off", children: discount70!),
                      ProductsShowcase(
                          title: "Upto 60% off", children: discount60!),
                      ProductsShowcase(
                          title: "Upto 50% off", children: discount50!),
                      ProductsShowcase(title: "Explore", children: discount0!),
                    ],
                  ),
                ),
                UserDetails(
                  offset: offset,
                ),
              ],
            )
          : const LoadingWidget(),
    );
  }
}
