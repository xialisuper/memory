import 'package:flutter/material.dart';

class DiaryList extends StatelessWidget {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 10,
      controller: _pageController,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 4),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604334364584&di=b468b0758ade7454dadf8a771131086e&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F25%2F19%2F01300000167299127987196914835.jpg',
                ),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: ,
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white),
                      const SizedBox(width: 4),
                      Text(
                        '福建 厦门',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
