class NotificationFilter {
  String? filterType;
  List<FilterValue>? value;

  NotificationFilter({this.filterType, this.value});

  NotificationFilter.fromJson(Map<String, dynamic> json) {
    filterType = json['filterType'];
    if (json['value'] != null) {
      value = <FilterValue>[];
      json['value'].forEach((v) {
        value!.add(FilterValue.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['filterType'] = filterType;
    if (value != null) {
      data['value'] = value!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FilterValue {
  String? itemType;
  String? itemValue;

  FilterValue({this.itemType, this.itemValue});

  FilterValue.fromJson(Map<String, dynamic> json) {
    itemType = json['itemType'];
    itemValue = json['itemValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['itemType'] = itemType;
    data['itemValue'] = itemValue;
    return data;
  }
}
