import 'package:flutter/material.dart';

class SuggestionAvatar extends StatelessWidget {
  final String title;
  final String urlAvatar;

  const SuggestionAvatar({
    Key? key,
    required this.title,
    required this.urlAvatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 65,
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(urlAvatar),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
