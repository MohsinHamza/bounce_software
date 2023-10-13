
import 'package:bonus_software/models/server_channel.dart';

class ServerCategory {
  String? id;
  String? name;
  int? permissionInt;
  List<ServerChannel>? channels;

  ServerCategory({this.id, this.name, this.permissionInt});

  ServerCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    permissionInt = json['permissionInt'];
    if (json['channels'] != null) {
      channels = <ServerChannel>[];
      json['channels'].forEach((v) {
        channels!.add(ServerChannel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['permissionInt'] = permissionInt;
    if (channels != null) data['channels'] = channels?.map((e) => e.toJson()).toList();
    return data;
  }
}
