class Layers {
  String? layerId;
  String? volumeAnnotationsVersion;

  Layers({this.layerId, this.volumeAnnotationsVersion});

  Layers.fromJson(Map<String, dynamic> json) {
    layerId = json['layerId'];
    volumeAnnotationsVersion = json['volumeAnnotationsVersion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['layerId'] = this.layerId;
    data['volumeAnnotationsVersion'] = this.volumeAnnotationsVersion;
    return data;
  }
}
