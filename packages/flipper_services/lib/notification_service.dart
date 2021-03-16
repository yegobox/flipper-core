library flipper_services;

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class NotificationService {
  init() async {
    // if android,ios,macos use firebaseMessaging only.
    final FirebaseMessaging messaging = FirebaseMessaging.instance;
    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        // if android and ios use awesome notification otherwise use something else.
        showLargeIconNotification(2, message.notification!.body);
        // log.d(message.notification.body);
      }
    });

    messaging.getToken().then((token) async {
      assert(token != null);
    });
    messaging.subscribeToTopic('app');
  }

  Future<void> showLargeIconNotification(int id, String? message) async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: id,
        channelKey: 'big_picture',
        body: '$message',
        largeIcon: 'asset://assets/icon/icon.png',
        notificationLayout: NotificationLayout.BigPicture,
        payload: {'uuid': 'uuid-test'},
      ),
    );
  }
}
