import 'package:flutter/material.dart';
import 'package:memory/screens/story_overview.dart';

class DiaryList extends StatelessWidget {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 10,
      controller: _pageController,
      itemBuilder: (BuildContext context, int index) {
        return StoryCard(index: index);
      },
    );
  }
}

class StoryCard extends StatelessWidget {
  final index;
  const StoryCard({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _openStoryOfIndex(index, context),
      child: Container(
        // color: Colors.lightBlue,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
          child: Container(
            // margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(1, 5), // changes position of shadow
                )
              ],
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
                  left: 40,
                  right: 40,
                  bottom: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Some big ass \nRocks to climb Rocks to climb ',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Today i crossed a big one from my bucket list.The grand canyon red rocks',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 220,
                        height: 44,
                        child: OutlineButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            '阅读',
                            maxLines: 1,
                            style: TextStyle(fontSize: 18),
                          ),
                          textColor: Colors.white,
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          onPressed: () => null,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 40,
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
        ),
      ),
    );
  }

  void _openStoryOfIndex(int index, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryOverviewScreen(),
      ),
    );
  }
}
