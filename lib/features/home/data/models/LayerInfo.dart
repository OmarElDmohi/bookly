import 'Layers.dart';

class LayerInfo {
  List<Layers>? layers;

  LayerInfo({this.layers});

  LayerInfo.fromJson(Map<String, dynamic> json) {
    if (json['layers'] != null) {
      layers = <Layers>[];
      json['layers'].forEach((v) {
        layers!.add(new Layers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.layers != null) {
      data['layers'] = this.layers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
