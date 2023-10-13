
import 'package:bonus_software/models/server_category.dart';

class NotificationTopic {
  String? id;
  String? topicType;
  String? value;
  ServerCategory? objectDetails;

  NotificationTopic({this.id, this.topicType, this.value});

  NotificationTopic.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    topicType = json['topicType'];
    value = json['value'];
    objectDetails = ServerCategory.fromJson(json["objectDetails"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['topicType'] = topicType;
    data['value'] = value;
    if (objectDetails != null) data['objectDetails'] = objectDetails?.toJson();
    return data;
  }
}
