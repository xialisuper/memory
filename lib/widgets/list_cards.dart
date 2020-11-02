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
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Some big ass \nRocks to climb',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Today i crossed a big one from my bucket list.\nThe grand canyon red rocks',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 8),
                      OutlineButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 120,
                          vertical: 15,
                        ),
                        child: Text(
                          '阅读',
                          style: TextStyle(fontSize: 18),
                        ),
                        textColor: Colors.white,
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                        onPressed: () => null,
                      ),
                    ],
                  ),
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
