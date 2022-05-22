import 'package:flutter/material.dart';
import 'package:picpay_clone/src/models/activity_menu_model.dart';

class ActivityBoxMenuHome extends StatelessWidget {
  final ActivityMenuModel model;

  const ActivityBoxMenuHome({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        height: model.contentButton ? 220 : 170,
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
                    color: model.color ?? Colors.green[200],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(model.urlPhoto),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    model.title,
                    maxLines: 4,
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
              model.isTwoLines
                  ? Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        model.subTitle ?? '',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )
                  : const SizedBox.shrink(),
              model.contentButton
                  ? Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Conferir',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[850],
                              minimumSize: const Size(double.infinity, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
