import 'package:flutter/material.dart';
import '../images.dart';
import '../main/widgets/add_button_widget.dart';
import '../main/widgets/app_bar.dart';
import '../main/widgets/two_buttons_widget.dart';
import '../main/widgets/custom_divider_widget.dart';
import '../main/widgets/grid_view_widget.dart';
import '../main/widgets/list_tile_widget.dart';
import '../main/widgets/select_type_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: ListView(
        children: [
          Center(
            child: Column(children: [
              const SizedBox(
                height: 24,
              ),
              Stack(
                children: [
                  Image.asset(AppImages.profile),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                        onTap: () {
                          print('Смена фото');
                        },
                        child: Image.asset(AppImages.add)),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const TitleTextWidget(title: 'Tiana Rosser'),
              const Text(
                'Developer',
                style: TextStyle(fontSize: 12, color: Color(0xff666666)),
              ),
              const SizedBox(height: 24),
              const CustomDividerWidget(),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: TitleTextWidget(title: 'Select type'))),
              const SelectTypeWidget(),
              const SizedBox(height: 16),
              const CustomDividerWidget(),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleTextWidget(title: 'Friends'),
                ListTileWidget(
                    title: 'Corey George', image: Image.asset(AppImages.boy3)),
                const CustomDividerWidget(endIndent: 0, indent: 72),
                ListTileWidget(
                    title: 'Ahmad Vetrovs', image: Image.asset(AppImages.boy2)),
                const CustomDividerWidget(endIndent: 0, indent: 72),
                ListTileWidget(
                    title: 'Cristofer Workman',
                    image: Image.asset(AppImages.boy1)),
                const CustomDividerWidget(endIndent: 0, indent: 72),
                ListTileWidget(
                    title: 'Tiana Korsgaard',
                    image: Image.asset(AppImages.girl)),
                const SizedBox(height: 20),
                const AddButtonWidget(),
                const SizedBox(height: 16),
                const CustomDividerWidget(endIndent: 0, indent: 0),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'My media',
                    style: TextStyle(fontSize: 24, letterSpacing: 0.18),
                  ),
                ),
                const SizedBox(height: 16),
                const GridViewWidget(),
                const SizedBox(height: 16),
                const TwoButtonsWidget(),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}
