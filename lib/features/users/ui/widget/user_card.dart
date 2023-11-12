import 'package:flutter/material.dart';
import 'package:tinder_like/features/users/models/user_model.dart';

class UserProfileCard extends StatelessWidget {
  final UserProfile userProfile;

  const UserProfileCard({super.key, required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                userProfile.name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                userProfile.username,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                userProfile.email,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                userProfile.phone,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                userProfile.address.fullUserAddress,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                userProfile.company.fullUserCompany,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
