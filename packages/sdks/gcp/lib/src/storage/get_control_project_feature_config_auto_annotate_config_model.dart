// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlProjectFeatureConfigAutoAnnotateConfigModel {
  /// The name of the model. Supported values include 'face-detector',
  /// 'object-detector', 'label-detector', and 'content-safety'.
  final pulumi.Input<String> name;

  /// Creates a new [GetControlProjectFeatureConfigAutoAnnotateConfigModel].
  /// [name] The name of the model. Supported values include 'face-detector',
  const GetControlProjectFeatureConfigAutoAnnotateConfigModel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetControlProjectFeatureConfigAutoAnnotateConfigModel.fromMap(Map<String, dynamic> map) {
    return GetControlProjectFeatureConfigAutoAnnotateConfigModel(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
