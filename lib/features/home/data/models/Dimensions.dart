class Dimensions {
  String? height;

  Dimensions({this.height});

  Dimensions.fromJson(Map<String, dynamic> json) {
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    return data;
  }
}
