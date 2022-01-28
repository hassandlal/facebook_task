import 'package:facebook_task/models/online_messenger_model.dart';
import 'package:facebook_task/models/post_model.dart';
import 'package:facebook_task/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeTabCubit(),
      child: BlocConsumer<HomeTabCubit, HomeTabStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeTabCubit.get(context);
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                WriteSomethingWidget(),
                SeparatorWidget(),
                OnlineWidget(onlineFriend: cubit.onlineFriends,),
                SeparatorWidget(),
                StoriesWidget(),
                for (Post post in cubit.posts)
                  Column(
                    children: <Widget>[
                      SeparatorWidget(),
                      PostWidget(post: post),
                    ],
                  ),
                SeparatorWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
