class TransctionModel {
  final String urlAvatar;
  final String value;
  final String fromUser;
  final String toUser;
  final String description;
  final int days;
  final String period;
  final int likes;
  final int comments;
  final bool isdeposit;

  TransctionModel(
      {required this.urlAvatar,
      required this.value,
      required this.description,
      required this.fromUser,
      required this.toUser,
      required this.days,
      required this.period,
      required this.likes,
      required this.comments,
      this.isdeposit = false});
}
