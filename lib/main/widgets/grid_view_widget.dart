import 'package:flutter/material.dart';
import '../../../images.dart';

List<String> gridImages = [
  AppImages.grid1,
  AppImages.grid2,
  AppImages.grid3,
  AppImages.grid4,
  AppImages.grid5,
  AppImages.grid6,
  AppImages.grid7,
  AppImages.grid8,
  AppImages.grid9,
];

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: gridImages.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => Stack(
        children: [
          Image.asset(
            gridImages[index],
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Positioned(
            right: 12,
            top: 10,
            child: InkWell(
              onTap: () {
                print('Фото Удалено');
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(207, 102, 121, 1),
                  border: Border.all(
                      width: 1.7,
                      color: Colors.white,
                      style: BorderStyle.solid),
                ),
                child: SizedBox(
                    height: 14,
                    width: 14,
                    child: Image.asset(
                      AppImages.close,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
