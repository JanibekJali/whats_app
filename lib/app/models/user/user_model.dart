class UserModel {
  final String sender;
  final String sms;
  final DateTime dateTime;
  bool? isMe;

  UserModel(
      {required this.sender,
      required this.sms,
      required this.dateTime,
      this.isMe});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      sender: json['sender'],
      sms: json['sms'],
      dateTime: DateTime.fromMillisecondsSinceEpoch(
        json['dateTime'],
      ),
      isMe: json['isMe'] != null ? json['isMe'] : false,
    );
  }
  Map<String, dynamic> toJson() => {
        'sender': sender,
        'sms': sms,
        'dateTime': dateTime.millisecondsSinceEpoch,
        'isMe': isMe,
      };
}
