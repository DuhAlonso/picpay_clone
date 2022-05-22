import 'package:flutter/material.dart';
import 'package:picpay_clone/src/models/suggestion_model.dart';

class SuggestionAvatar extends StatelessWidget {
  final SuggestionModel model;

  const SuggestionAvatar({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        height: 70,
        width: 65,
        child: Column(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(model.urlAvatar),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              model.title,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: const TextStyle(color: Colors.white, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}
