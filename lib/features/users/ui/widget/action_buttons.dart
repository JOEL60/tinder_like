import 'package:flutter/material.dart';

class ActionsButton extends StatelessWidget {
  final void Function() nextProfile;
  final void Function() previousProfile;

  const ActionsButton(
      {required this.nextProfile, required this.previousProfile, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          Positioned(
            left: 40,
            top: 100,
            child: IconButton(
                icon: const Icon(Icons.arrow_back), onPressed: previousProfile),
          ),
          Positioned(
            right: 40,
            top: 100,
            child: IconButton(
                icon: const Icon(Icons.arrow_forward), onPressed: nextProfile),
          ),
        ],
      ),
    );
  }
}
