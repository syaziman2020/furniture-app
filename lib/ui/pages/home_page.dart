import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/cubit/currentpage_cubit.dart';
import 'package:furniture_shop/shared/theme.dart';
import 'package:furniture_shop/ui/pages/chart_page.dart';
import 'package:furniture_shop/ui/pages/detail_page.dart';
import 'package:furniture_shop/ui/pages/discount_Page.dart';
import 'package:furniture_shop/ui/pages/user_page.dart';
import 'package:furniture_shop/ui/widgets/card_best_seller.dart';
import 'package:furniture_shop/ui/widgets/card_item.dart';
import 'package:furniture_shop/ui/widgets/item_navbar.dart';
import 'package:furniture_shop/ui/widgets/list_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget bottomNavbar() {
      return Container(
        height: 72,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(35, 0, 35, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemNavbar(
                onTap: () {
                  context.read<CurrentpageCubit>().changePage(0);
                },
                imageUrl: "assets/home.png",
                index: 0,
              ),
              ItemNavbar(
                imageUrl: "assets/discount1.png",
                onTap: () {
                  context.read<CurrentpageCubit>().changePage(1);
                },
                index: 1,
              ),
              ItemNavbar(
                onTap: () {
                  context.read<CurrentpageCubit>().changePage(2);
                },
                imageUrl: "assets/shop.png",
                index: 2,
              ),
              ItemNavbar(
                onTap: () {
                  context.read<CurrentpageCubit>().changePage(3);
                },
                imageUrl: "assets/profile.png",
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/category.png",
            width: 22,
          ),
          Image.asset(
            "assets/chat1.png",
            width: 24,
          ),
        ],
      );
    }

    Widget welcomeWithTextField() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Perfect Furniture",
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "For your house",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 48,
                width: size.width - 96 - 16,
                child: TextField(
                  cursorColor: blackC,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    hintText: "Search for furniture",
                    hintStyle: blackTextStyle.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: yellowC,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/filter.png",
                      width: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget partOfList() {
      return Column(
        children: [
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListProduct(
                title: "Chair",
                currentProduct: true,
              ),
              ListProduct(
                title: "Table",
              ),
              ListProduct(
                title: "Lamp",
              ),
              ListProduct(
                title: "Floor",
              ),
              ListProduct(
                title: "Sofa",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardItem(
                imageUrl: "assets/kursi1.png",
                title: "Dining Room Chair",
                price: "\$120.",
              ),
              SizedBox(
                width: 16,
              ),
              CardItem(
                imageUrl: "assets/kursi2.png",
                title: "Lounge Chair",
                price: "\$115.",
              ),
            ],
          ),
        ],
      );
    }

    Widget bestSellerList() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          Text(
            "Best Seller",
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              color: Colors.black,
            ),
          ),
          CardBestSeller(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(),
                ),
              );
            },
            imageUrl: "assets/kursi3.png",
            title: "Rocking Chair",
            price: "\$145.",
            style: "Chill, Comfortable",
          ),
          CardBestSeller(
            onTap: () {},
            imageUrl: "assets/kursi5.png",
            title: "Love Couch Chair",
            price: "\$130.",
            style: "Chill",
          ),
          SizedBox(
            height: 10,
          ),
        ],
      );
    }

    Widget buildContent() {
      return BlocBuilder<CurrentpageCubit, int>(
        builder: (context, state) {
          switch (state) {
            case 0:
              return ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  header(),
                  welcomeWithTextField(),
                  partOfList(),
                  bestSellerList(),
                ],
              );
            case 1:
              return DiscountPage();
            case 2:
              return ChartPage();
            case 3:
              return UserPage();
            default:
              return ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  header(),
                  welcomeWithTextField(),
                  partOfList(),
                  bestSellerList(),
                ],
              );
          }
        },
      );
    }

    return Scaffold(
      backgroundColor: bgC,
      bottomNavigationBar: bottomNavbar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
        child: buildContent(),
      ),
    );
  }
}
