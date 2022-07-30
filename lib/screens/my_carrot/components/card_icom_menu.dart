import 'package:carrot_market_ui/models/icon_menu.dart';
import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';

class CardIconMenu extends StatelessWidget {

  final List<IconMenu> iconMenus;

  CardIconMenu({required this.iconMenus});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          children: List.generate(
            iconMenus.length,
              (index) => _buildRowIconItem(
                iconMenus[index].title, iconMenus[index].iconData,)
              ),
        ),
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Icon(iconData, size: 17),
          const SizedBox(width: 20,),
          Text(title, style: textTheme().subtitle1,),
        ],
      ),
    );
  }
}
