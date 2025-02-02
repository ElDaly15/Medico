import 'package:flutter/material.dart';
import 'package:medico/featuers/home/presentation/views/widgets/container_of_category_item.dart';

class ListViewOfCategoryItems extends StatefulWidget {
  const ListViewOfCategoryItems({super.key});

  @override
  State<ListViewOfCategoryItems> createState() =>
      _ListViewOfCategoryItemsState();
}

class _ListViewOfCategoryItemsState extends State<ListViewOfCategoryItems> {
  int myIndex = 0;
  final List<String> categories = [
    '🔥 All',
    '🤒 Fever',
    '🤧 Cough',
    '🤢 Nauseated',
    '🥶 Cold',
    '🥵 Headache',
    '🤕 Fever',
    '🤧 Cough',
    '🤢 Nauseated',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return index == 0
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        myIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22, right: 8),
                      child: ContainerOfSelectCategory(
                        isActive: index == myIndex,
                        title: categories[index],
                      ),
                    ),
                  )
                : index == categories.length - 1
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            myIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 22),
                          child: ContainerOfSelectCategory(
                            isActive: index == myIndex,
                            title: categories[index],
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            myIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: ContainerOfSelectCategory(
                            isActive: index == myIndex,
                            title: categories[index],
                          ),
                        ),
                      );
          }),
    );
  }
}
