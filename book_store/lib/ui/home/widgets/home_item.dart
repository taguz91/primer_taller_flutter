import 'package:book_store/constants/colors.dart';
import 'package:book_store/widgets/tag_list.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 1,
          horizontal: 5,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 5,
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Cuentos de Amor de Locura y de Muerte',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Quiroga, Horacio',
                      style: TextStyle(
                        color: AppColors.darkGrey,
                      ),
                    ),
                    SizedBox(height: 10),
                    TagList(tags: [
                      'Short stories, Uruguayan',
                      'Short stories, Uruguayan',
                      'Short stories, Uruguayan',
                      'Short stories, Uruguayan'
                    ]),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
