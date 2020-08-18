
import 'package:flutter/material.dart';

import '../themecolors.dart';

class Category extends StatelessWidget {
  Category({
    @required this.name,
    this.selected = false,
});
  String name;
  bool selected;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: selected?Colors.white:secondaryBackground,
      ),
      padding: EdgeInsets.all(10.0),
      child: Text(
        name,
        style: selected?selectedCategory:styleRegular,
      ),
    );
  }
}
