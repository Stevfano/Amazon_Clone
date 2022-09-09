import 'package:amazon_clone/model/product_model.dart';
import 'package:amazon_clone/screens/account_screen.dart';
import 'package:amazon_clone/screens/cart_screen.dart';
import 'package:amazon_clone/screens/home_screen.dart';
import 'package:amazon_clone/screens/more_screen.dart';
import 'package:amazon_clone/widgets/simple_product_widget.dart';
import 'package:flutter/material.dart';

const double kAppBarHeight = 120;
const double kScrollHeight = 80;

const String amazonLogoUrl =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2500px-Amazon_icon.svg.png";

const List<String> categoriesList = [
  "Prime",
  "Mobiles",
  "Fashion",
  "Electronics",
  "Home",
  "Fresh",
  "Appliances",
  "Books, Toys",
  "Essential"
];

List<Widget> screens = [
  const HomeScreen(),
  const AccountScreen(),
  const CartScreen(),
  const MoreScreen(),
];

const List<String> categoryLogos = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/115yueUc1aL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11qyfRJvEbL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11BIyKooluL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/01cPTp7SLWL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11yLyO9f9ZL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11M0jYc-tRL._SX90_SY90_.png",
];

const List<String> largeAds = [
  "https://m.media-amazon.com/images/I/51QISbJp5-L._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61jmYNrfVoL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/612a5cTzBiL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61fiSvze0eL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61PzxXMH-0L._SX3000_.jpg",
];

const List<String> smallAds = [
  "https://m.media-amazon.com/images/I/11M5KkkmavL._SS70_.png",
  "https://m.media-amazon.com/images/I/11iTpTDy6TL._SS70_.png",
  "https://m.media-amazon.com/images/I/11dGLeeNRcL._SS70_.png",
  "https://m.media-amazon.com/images/I/11kOjZtNhnL._SS70_.png",
];

const List<String> adItemNames = [
  "Amazon Pay",
  "Recharge",
  "Rewards",
  "Pay Bills"
];

//Dont even attemp to scroll to the end of this manually lmao
const String amazonLogo =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/2560px-Amazon_logo.svg.png";

List<Widget> testChildren = [
  SimpleProductWidget(
    productModel: ProductModel(
      url:
          "https://dynamic.zacdn.com/ny3bA10dlTXb4jU3LRBSdZ7F4uI=/fit-in/472x690/filters:quality(95):fill(ffffff)/https://static-my.zacdn.com/p/the-ordinary-7698-2820892-1.jpg",
      productName: "Buy Hair Oils & Treatments | ZALORA Malaysia & Brunei",
      cost: 99.9,
      discount: 0,
      uid: "wyqbwebflw",
      sellerName: "Steven",
      sellerUid: "hsu272738",
      rating: 3,
      noOfRating: 2,
    ),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
      url:
          "https://dynamic.zacdn.com/ny3bA10dlTXb4jU3LRBSdZ7F4uI=/fit-in/472x690/filters:quality(95):fill(ffffff)/https://static-my.zacdn.com/p/the-ordinary-7698-2820892-1.jpg",
      productName: "Buy Hair Oils & Treatments",
      cost: 99.9,
      discount: 0,
      uid: "wyqbwebflw",
      sellerName: "Steven",
      sellerUid: "hsu272738",
      rating: 3,
      noOfRating: 2,
    ),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
      url:
          "https://dynamic.zacdn.com/ny3bA10dlTXb4jU3LRBSdZ7F4uI=/fit-in/472x690/filters:quality(95):fill(ffffff)/https://static-my.zacdn.com/p/the-ordinary-7698-2820892-1.jpg",
      productName: "Buy Hair Oils & Treatments",
      cost: 99.9,
      discount: 0,
      uid: "wyqbwebflw",
      sellerName: "Steven",
      sellerUid: "hsu272738",
      rating: 3,
      noOfRating: 2,
    ),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
      url:
          "https://dynamic.zacdn.com/ny3bA10dlTXb4jU3LRBSdZ7F4uI=/fit-in/472x690/filters:quality(95):fill(ffffff)/https://static-my.zacdn.com/p/the-ordinary-7698-2820892-1.jpg",
      productName: "Buy Hair Oils & Treatments",
      cost: 99.9,
      discount: 0,
      uid: "wyqbwebflw",
      sellerName: "Steven",
      sellerUid: "hsu272738",
      rating: 3,
      noOfRating: 2,
    ),
  ),
];

List<String> keysOfRating = [
  "Very bad",
  "Poor",
  "Average",
  "Good",
  "Excellent"
];
