import 'package:flutter/material.dart';

class ActivityBoxMenuHome extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String urlPhoto;
  final bool isTwoLines;
  final bool contentButton;
  final Color? color;

  const ActivityBoxMenuHome({
    Key? key,
    required this.title,
    this.subTitle,
    required this.urlPhoto,
    this.isTwoLines = false,
    this.contentButton = false,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
        height: contentButton ? 220 : 170,
        width: 150,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    color: color ?? Colors.green[200],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(urlPhoto), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    title,
                    maxLines: 4,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
              isTwoLines
                  ? Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        subTitle ?? '',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )
                  : SizedBox.shrink(),
              contentButton
                  ? Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Conferir',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[850],
                              minimumSize: Size(double.infinity, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
