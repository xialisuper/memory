import 'package:flutter/material.dart';
import 'package:memory/config/theme_config.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({
    Key key,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TabBar(
      // indicatorPadding: EdgeInsets.zero,
      indicator: const BoxDecoration(),
      tabs: icons
          .asMap()
          .map((index, icon) => MapEntry(
                index,
                Tab(
                  icon: Icon(
                    icon,
                    color: index == selectedIndex
                        ? ThemeConfig.themeBlue
                        : ThemeConfig.themeLightGrey,
                    size: 30.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
