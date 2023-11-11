import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_like/data/api_rest/api_rest.dart';
import 'package:tinder_like/features/user_photos/bloc/user_photos_bloc.dart';
import 'package:tinder_like/features/user_photos/bloc/user_photos_event.dart';
import 'package:tinder_like/features/user_photos/bloc/user_photos_state.dart';
import 'package:tinder_like/features/user_photos/ui/user_photos_widget.dart';
import 'package:tinder_like/features/users/bloc/user_bloc.dart';
import 'package:tinder_like/features/users/ui/widget/user_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<UserBloc>().add(const UserEvent.getUser(userId: 1));
    context.read<UserPhotosBloc>().add(const GetUserPhotosEvent(albumId: 1));
    super.initState();
  }

  Widget get changeUserCardButtons {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          Positioned(
            left: 40,
            top: 100,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () =>
                  context.read<UserBloc>().add(const UserEvent.previous()),
            ),
          ),
          Positioned(
            right: 40,
            top: 100,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () =>
                  context.read<UserBloc>().add(const UserEvent.next()),
            ),
          ),
        ],
      ),
    );
  }

  void _showModalToSeePhotos(BuildContext context, List<UserPhotos> photos) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        builder: (context) {
          return SingleChildScrollView(child: Photos(photos: photos));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
          success: (usersProfile, selectedUserId) {
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(children: [
                  BlocBuilder<UserPhotosBloc, GetUserPhotosState>(
                    builder: (context, photoState) {
                      if (photoState is GetUserPhotosSuccess) {
                        return GestureDetector(
                          onTap: () =>
                              _showModalToSeePhotos(context, photoState.photos),
                          child: ClipOval(
                            child: CachedNetworkImage(
                                height: 100,
                                width: 100,
                                imageUrl: photoState.photos.first.url,
                                fit: BoxFit.contain),
                          ),
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                  changeUserCardButtons,
                  UserProfileCard(userProfile: usersProfile),
                ]),
              ),
            );
          },
          error: () {
            return const Center(
                child: Text(
                    'Something went wrong, please try again and again and again...'));
          },
        );
      },
    ));
  }
}
