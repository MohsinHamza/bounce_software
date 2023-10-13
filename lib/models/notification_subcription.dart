
import 'notification_filter.dart';
import 'notification_topic.dart';

class NotificationSubscription {
  NotificationTopic? topic;
  List<NotificationFilter>? filters;

  NotificationSubscription({this.topic, this.filters});

  NotificationSubscription.fromJson(Map<String, dynamic> json) {
    topic = json['topic'] != null ? NotificationTopic.fromJson(json['topic']) : null;
    if (json['filters'] != null) {
      filters = <NotificationFilter>[];
      json['filters'].forEach((v) {
        filters!.add(NotificationFilter.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (topic != null) {
      data['topic'] = topic!.toJson();
    }
    if (filters != null) {
      data['filters'] = filters!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
