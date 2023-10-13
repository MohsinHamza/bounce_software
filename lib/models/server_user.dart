
import 'package:bonus_software/models/user_role.dart';

class ServerUser {
  String? id;
  String? name;
  String? avatar;
  String? roleColor;
  List<UserRole>? roles;

  ServerUser({this.id, this.name, this.avatar, this.roleColor, this.roles});

  ServerUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    avatar = json['avatar'];
    roleColor = json['roleColor'];
    if (json['roles'] != null) {
      roles = <UserRole>[];
      json['roles'].forEach((v) {
        roles!.add(UserRole.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['avatar'] = avatar;
    data['roleColor'] = roleColor;
    if (roles != null) {
      data['roles'] = roles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
