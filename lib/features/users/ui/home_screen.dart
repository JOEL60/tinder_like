import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_like/features/user_photos/bloc/user_photos_bloc.dart';
import 'package:tinder_like/features/user_photos/bloc/user_photos_event.dart';
import 'package:tinder_like/features/user_photos/bloc/user_photos_state.dart';
import 'package:tinder_like/features/user_photos/models/user_photos.dart';
import 'package:tinder_like/features/user_photos/ui/user_photos_widget.dart';
import 'package:tinder_like/features/users/bloc/user_bloc.dart';
import 'package:tinder_like/features/users/ui/widget/action_buttons.dart';
import 'package:tinder_like/features/users/ui/widget/user_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(const UserEvent.getUser(userId: 1));
    context.read<UserPhotosBloc>().add(const UserPhotosEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (usersProfile, selectedUserId) {
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(children: [
                  BlocBuilder<UserPhotosBloc, UserPhotosState>(
                    buildWhen: (previousState, currentState) {
                      return previousState != currentState;
                    },
                    builder: (context, photoState) {
                      if (photoState is UserPhotosSuccess) {
                        return GestureDetector(
                          onTap: () => _showPhotosModalBottomSheet(
                              context, photoState.photos),
                          child: ClipOval(
                            child: CachedNetworkImage(
                                height: 100,
                                width: 100,
                                imageUrl: photoState.photos.first.url,
                                fit: BoxFit.contain),
                          ),
                        );
                      }
                      return const SizedBox(
                          width: 100,
                          height: 100,
                          child: CircularProgressIndicator(
                            color: Colors.amber,
                          ));
                    },
                  ),
                  ActionsButton(nextProfile: () {
                    context
                        .read<UserPhotosBloc>()
                        .add(const NextProfilePhoto());
                    context.read<UserBloc>().add(const UserEvent.next());
                  }, previousProfile: () {
                    context
                        .read<UserPhotosBloc>()
                        .add(const PreviousProfilePhoto());
                    context.read<UserBloc>().add(const UserEvent.previous());
                  }),
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

  void _showPhotosModalBottomSheet(
      BuildContext context, List<UserPhotos> photos) {
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
}
