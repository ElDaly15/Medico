import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_colors.dart';
import 'package:medico/featuers/home/presentation/views/widgets/column_of_main_container_on_home.dart';
import 'package:medico/featuers/home/presentation/views/widgets/custom_header_with_title_and_see_all.dart';
import 'package:medico/featuers/home/presentation/views/widgets/list_view_of_category_items.dart';
import 'package:medico/featuers/home/presentation/views/widgets/row_of_fav_doc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: AppColors.mainColorTheme,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: ColumnOfMainHomeContainer(),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const ListViewOfCategoryItems(),
          const SizedBox(
            height: 15,
          ),
          const CustomHeaderWithTitleAndSeeAll(
            title: 'Favourite Doctor',
          ),
          const SizedBox(
            height: 15,
          ),
          const RowOfFavDoc(),
        ],
      ),
    );
  }
}
