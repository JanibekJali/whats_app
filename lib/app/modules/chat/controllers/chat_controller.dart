import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whats_app/app/models/user/user_model.dart';
import 'package:whats_app/app/modules/chat/services/chat_services.dart';

class ChatController extends GetxController {
  final textEditingController = TextEditingController();
  Future<void> sendMessages() async {
    final sms = textEditingController.text.trim();
    if (sms != '') {
      await ChatServices.sendMessages(sms);
      textEditingController.clear();
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getStreamMessages() {
    return ChatServices.getStreamMessages();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
