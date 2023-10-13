class UserProfile {
  int? id;
  String? discordId;
  List<String>? tenantIds;

  UserProfile({this.id, this.discordId, this.tenantIds});

  UserProfile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    discordId = json['discordId'];
    tenantIds = json['tenantIds'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['discordId'] = discordId;
    data['tenantIds'] = tenantIds;
    return data;
  }
}
