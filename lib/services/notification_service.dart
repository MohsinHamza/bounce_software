// import 'package:bouncesoftware/core/constant.dart';
// import 'package:bouncesoftware/models/notification_subcription.dart';
// import 'package:bouncesoftware/services/http_service.dart';
//
// class NotificationService {
//   Future<List<NotificationSubscription>?> getExistingNotificationRole() async {
//     var json = await HttpService().getRequest(Endpoints.notificationSubscriptions);
//     if (json != null) {
//       List<NotificationSubscription> subscribtions = [];
//       json.forEach((e) => subscribtions.add(NotificationSubscription.fromJson(e)));
//       return subscribtions;
//     }
//     return null;
//   }
// }
