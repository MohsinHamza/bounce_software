class ServerChannel {
  String? id;
  String? name;
  String? category;
  int? permissionInt;

  ServerChannel({this.id, this.name, this.category, this.permissionInt});

  ServerChannel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    permissionInt = json['permissionInt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['category'] = category;
    data['permissionInt'] = permissionInt;
    return data;
  }
}
