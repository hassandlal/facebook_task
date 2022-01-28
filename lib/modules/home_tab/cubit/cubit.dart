import 'package:facebook_task/models/online_messenger_model.dart';
import 'package:facebook_task/models/post_model.dart';
import 'package:facebook_task/modules/home_tab/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabCubit extends Cubit<HomeTabStates> {
  HomeTabCubit() : super(HomeTabInitialState());

  static HomeTabCubit get(context) => BlocProvider.of(context);

  List<Post> posts = [
    new Post(
        profileImageUrl: 'assets/Sam Wilson.jpg',
        username: 'Saif Jlassi',
        time: '8h',
        content:
            'Hey guys whats up, This is Sam Wilson. I am currently in singapore. Came here to make some amazing memories',
        likes: '120',
        comments: '45',
        shares: '5',postImagesUrl: ['assets/jeremy.jpg']),
    new Post(
        profileImageUrl: 'assets/jeremy.jpg',
        username: 'Jeremy',
        time: '13h',
        content:
            'I am going to make a Flutter complete course, where i will be teaching all the things that a developer would need to know in order to become a great flutter developer. Course is for beginners, and will be taught everything related to flutter from scratch!!',
        likes: '52',
        comments: '1',
        shares: '6',postImagesUrl: ['assets/jeremy.jpg','assets/james.jpg','assets/james.jpg']),
    new Post(
        profileImageUrl: 'assets/mathew.jpg',
        username: 'Mathew Hallberg',
        time: '2d',
        content:
            'Hey guys this is Mathew, I recently created a cool AR/VR application and pushed it to github, interested people can go and see the working of the app. I hope you guys like it!',
        likes: '61',
        comments: '3',
        shares: '2',postImagesUrl: []),
    new Post(
        profileImageUrl: 'assets/eddison.jpg',
        username: 'Eddison',
        time: '1w',
        content:
            'Good afternoon people, hope you are doing well. STAY HOME STAY SAFE. Hope you are healthy and happy. Wish you good health guys :)',
        likes: '233',
        comments: '6',
        shares: '4',postImagesUrl: ['assets/jeremy.jpg']),
    new Post(
        profileImageUrl: 'assets/olivia.jpg',
        username: 'Olivia',
        time: '3w',
        content:
            'I am starting a job in Los Angeles next week, this is my first ever job. Wish me luck guys',
        likes: '77',
        comments: '7',
        shares: '2',postImagesUrl: ['assets/jeremy.jpg','assets/james.jpg']),
  ];
  List<OnlineFriends> onlineFriends = [
    OnlineFriends(profileImageUrl: 'assets/samantha.jpg'),
    OnlineFriends(profileImageUrl: 'assets/Sam Wilson.jpg'),
    OnlineFriends(profileImageUrl: 'assets/greg.jpg'),
    OnlineFriends(profileImageUrl: 'assets/james.jpg'),
    OnlineFriends(profileImageUrl: 'assets/john.jpg'),
    OnlineFriends(profileImageUrl: 'assets/greg.jpg'),
    OnlineFriends(profileImageUrl: 'assets/james.jpg'),
    OnlineFriends(profileImageUrl: 'assets/john.jpg'),
  ];
}
