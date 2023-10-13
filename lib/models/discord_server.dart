
import 'package:bonus_software/models/server_category.dart';

class DiscordServer {
  String? id;
  String? discordId;
  String? title;
  String? iconUrl;
  String? primaryColor;
  String? secondaryColor;
  String? logo;
  String? banner;
  String? name;
  List<ServerCategory>? categories;

  DiscordServer({this.id, this.discordId, this.title, this.iconUrl, this.primaryColor, this.secondaryColor, this.logo, this.banner, this.name, this.categories});

  DiscordServer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    discordId = json['discordId'];
    title = json['title'];
    iconUrl = json['iconUrl'];
    primaryColor = json['primaryColor'];
    secondaryColor = json['secondaryColor'];
    logo = json['logo'];
    banner = json['banner'];
    name = json['name'];
    if (json['categories'] != null) {
      categories = <ServerCategory>[];
      json['categories'].forEach((v) {
        categories!.add(ServerCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['discordId'] = discordId;
    data['title'] = title;
    data['iconUrl'] = iconUrl;
    data['primaryColor'] = primaryColor;
    data['secondaryColor'] = secondaryColor;
    data['logo'] = logo;
    data['banner'] = banner;
    data['name'] = name;
    if (categories != null) data['categories'] = categories?.map((e) => e.toJson()).toList();
    return data;
  }
}
