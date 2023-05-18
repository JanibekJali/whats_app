import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:whats_app/app/models/user/user_model.dart';
import 'package:whats_app/app/widgets/messages/send_messages.dart';
import 'package:whats_app/app/widgets/messages/stream_message.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  ChatView({Key? key}) : super(key: key);
  TextEditingController _editingController = TextEditingController();
  final Stream<QuerySnapshot> _chatStream =
      FirebaseFirestore.instance.collection('chatStream').snapshots();
  final ChatController _chatController = Get.put(ChatController());
  // String sms;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StreamMessage(
            chatStream: _chatController.getStreamMessages(),
          ),
          SendMessages(
            controller: _chatController.textEditingController,
            onPressed: () async => _chatController.sendMessages(),
          ),
        ],
      ),
    );
  }
}
