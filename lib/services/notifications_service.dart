import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationsService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  // Request permission to send notifications
  Future<void> initNotifications() async {
    try {
      await _firebaseMessaging.requestPermission();
      final token = await getToken();

      debugPrint("token: $token");
    } catch (e) {
      debugPrint('Error requesting notification permission: $e');
    }
  }

  // Get the token from the device
  Future<String?> getToken() async {
    try {
      return await _firebaseMessaging.getToken();
    } catch (e) {
      debugPrint('Error getting device token: $e');
      return null;
    }
  }

  // Subscribe to a topic
  Future<void> subscribeToTopic(String topic) async {
    try {
      await _firebaseMessaging.subscribeToTopic(topic);
    } catch (e) {
      debugPrint('Error subscribing to topic: $e');
    }
  }

  // Unsubscribe from a topic
  Future<void> unsubscribeFromTopic(String topic) async {
    try {
      await _firebaseMessaging.unsubscribeFromTopic(topic);
    } catch (e) {
      debugPrint('Error unsubscribing from topic: $e');
    }
  }
}
