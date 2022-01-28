import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook_task/models/online_messenger_model.dart';
import 'package:facebook_task/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SeparatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      width: MediaQuery.of(context).size.width,
      height: 11.0,
    );
  }
}

class StoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 15.0),
          Container(
            width: size.width * 0.27,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage('assets/story1.jpg'), fit: BoxFit.cover)),
          ),
          SizedBox(width: 10.0),
          Container(
            width: size.width * 0.27,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/story2.jpg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.0)),
          ),
          SizedBox(width: 10.0),
          Container(
            width: size.width * 0.27,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/story3.jpg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.0)),
          ),
          SizedBox(width: 10.0),
          Container(
            width: size.width * 0.27,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/story4.jpg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.0)),
          ),
        ],
      ),
    );
  }
}

class WriteSomethingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/Mike Tyler.jpg'),
                ),
                SizedBox(width: 7.0),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  height:MediaQuery.of(context).size.height *0.1,
                  width: MediaQuery.of(context).size.width *0.7,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Text('Write something here...'),
                )
              ],
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.live_tv,
                      size: 20.0,
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('Live',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                  ],
                ),
                Container(
                    height: 20,
                    child: VerticalDivider(color: Colors.grey[600])),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.photo_library,
                      size: 20.0,
                      color: Colors.green,
                    ),
                    SizedBox(width: 5.0),
                    Text('Photo',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                  ],
                ),
                Container(
                    height: 20,
                    child: VerticalDivider(color: Colors.grey[600])),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.video_call,
                      size: 20.0,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('Room',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OnlineWidget extends StatelessWidget {
  final List<OnlineFriends> onlineFriend;

  OnlineWidget({required this.onlineFriend});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 15.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                border: Border.all(width: 1.0, color: Colors.blue)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.video_call, size: 30.0, color: Colors.purple),
                SizedBox(width: 5.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Create', style: TextStyle(color: Colors.blue)),
                    Text('Room', style: TextStyle(color: Colors.blue)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 15.0),
          for (OnlineFriends onlineFriends in onlineFriend)
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 22.0,
                    backgroundImage: AssetImage(onlineFriends.profileImageUrl),
                  ),
                  Positioned(
                    right: 1.0,
                    bottom: 1.0,
                    child: CircleAvatar(
                      radius: 6.0,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(width: 15.0),
          SizedBox(width: 15.0),
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final Post post;

  PostWidget({required this.post});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(post.profileImageUrl),
                radius: 20.0,
              ),
              SizedBox(width: 7.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(post.username,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0)),
                  SizedBox(height: 5.0),
                  Text(post.time)
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Text(post.content, style: TextStyle(fontSize: 15.0)),
          post.postImagesUrl.length == 0
              ? SizedBox(height: 10.0)
              : (post.postImagesUrl.length == 1
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width * 0.9,
                        height: size.height * 0.4,
                        child: Image.asset(
                          post.profileImageUrl,
                        ),
                      ),
                    )
                  : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: CarouselSlider(
                        options: CarouselOptions(),
                        items: post.postImagesUrl
                            .map((item) => Container(
                                  child: Center(
                                      child: Image.asset(item, width: 1000)),
                                ))
                            .toList(),
                      ),
                  )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.thumbsUp,
                      size: 15.0, color: Colors.blue),
                  Text(' ${post.likes}'),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('${post.comments} comments  •  '),
                  Text('${post.shares} shares'),
                ],
              ),
            ],
          ),
          Divider(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Like', style: TextStyle(fontSize: 14.0)),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.commentAlt, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Comment', style: TextStyle(fontSize: 14.0)),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.share, size: 20.0),
                  SizedBox(width: 5.0),
                  //Text('Share', style: TextStyle(fontSize: 14.0)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
