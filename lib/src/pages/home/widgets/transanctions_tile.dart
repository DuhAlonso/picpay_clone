import 'package:flutter/material.dart';
import 'package:picpay_clone/src/models/transction_model.dart';

class TransanctionsTile extends StatelessWidget {
  final TransctionModel transctionModel;

  const TransanctionsTile({
    required this.transctionModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 26,
                  backgroundImage: NetworkImage(transctionModel.urlAvatar),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  transctionModel.fromUser,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    transctionModel.description,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Text(
                  transctionModel.toUser,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'R\$ ${transctionModel.value}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: transctionModel.isdeposit
                        ? Colors.green[800]
                        : Colors.red[400]),
              ),
              Text(
                ' | ',
                style: TextStyle(color: Colors.blueGrey[600]!.withAlpha(150)),
              ),
              Icon(
                Icons.lock_outlined,
                color: Colors.grey.withAlpha(150),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  transctionModel.days.toString(),
                  style: const TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ),
              Text(
                transctionModel.period,
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const Text(
                ' atrás',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const Spacer(),
              const Icon(
                Icons.mode_comment_outlined,
                color: Colors.grey,
                size: 22,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                transctionModel.comments.toString(),
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.favorite_border_rounded,
                size: 22,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                transctionModel.likes.toString(),
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
