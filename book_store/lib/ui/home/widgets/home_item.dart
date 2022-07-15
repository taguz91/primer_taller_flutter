import 'package:book_store/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(
            top: 40,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              height: 100,
              child: Container(
                margin: const EdgeInsets.only(
                  left: 125,
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Cuentos de Amor de Locura y de Muerte',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Quiroga, Horacio',
                      style: TextStyle(
                        color: AppColors.darkGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: const Image(
                image: AssetImage(
                  'assets/images/book-placeholder.jpeg',
                ),
                width: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
