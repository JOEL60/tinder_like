import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tinder_like/constants.dart';
import 'package:tinder_like/data/api_rest/api_rest.dart';
import 'package:tinder_like/data/dio.dart';
import 'package:tinder_like/features/user_photos/bloc/user_photos_bloc.dart';
import 'package:tinder_like/features/users/bloc/user_bloc.dart';
import 'package:tinder_like/features/users/ui/home_screen.dart';

void main() {
  runApp(const TinderLikeApp());
}

class TinderLikeApp extends StatelessWidget {
  const TinderLikeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<ApiRest>(
              create: (_) =>
                  retrofitApiRest(dioInstance(), baseUrl: Constants.baseUrl)),
        ],
        child: MultiBlocProvider(
            providers: [
              BlocProvider<UserBloc>(
                  create: (context) => UserBloc(apiRest: context.read())),
              BlocProvider<UserPhotosBloc>(
                  create: (context) => UserPhotosBloc(apiRest: context.read()))
            ],
            child: const MaterialApp(
              home: HomeScreen(),
              debugShowCheckedModeBanner: false,
            )));
  }
}
