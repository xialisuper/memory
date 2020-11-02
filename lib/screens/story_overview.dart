import 'package:flutter/material.dart';

class StoryOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundContainer(),
        Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Row(
              children: [
                Icon(Icons.location_on),
                const SizedBox(width: 8),
                Text('Germany, Austria ,Swiss'),
              ],
            ),
            elevation: 0,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //4分之1高度的留白
                  SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                  StoryTitle(),
                  Divider(
                    color: Colors.grey[300],
                    indent: 18,
                    endIndent: 18,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class StoryTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Through austrias mountain & lakes Through austrias mountain & lakes',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              Time(),
              const SizedBox(width: 20),
              Time(),
              const SizedBox(width: 20),
              Time(),
              const SizedBox(width: 20),
            ],
          )
        ],
      ),
    );
  }
}

class Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.timelapse,
          color: Colors.white,
          size: 18,
        ),
        const SizedBox(width: 4),
        Text(
          '2d 4h',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w200,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class TripMiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: NetworkImage(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604348297961&di=83c6be07fc9ba12344624e2039b5ba56&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F52%2F52%2F01200000169026136208529565374.jpg',
          ),
        ),
      ),
    );
  }
}
