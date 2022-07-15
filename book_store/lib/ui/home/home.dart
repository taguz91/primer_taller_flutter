import 'package:book_store/constants/colors.dart';
import 'package:book_store/ui/home/widgets/home_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColors.grey,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.flag),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: const [
                    HomeItem(),
                    HomeItem(),
                    HomeItem(),
                    HomeItem(),
                    HomeItem(),
                    HomeItem(),
                    HomeItem(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
