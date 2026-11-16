// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlProjectFeatureConfigAutoAnnotateConfigModel {
  /// The name of the model. Supported values include `face-detector`,
  /// `object-detector`, `label-detector`, and `content-safety`.
  final pulumi.Input<String> name;

  /// Creates a new [ControlProjectFeatureConfigAutoAnnotateConfigModel].
  /// [name] The name of the model. Supported values include `face-detector`,
  const ControlProjectFeatureConfigAutoAnnotateConfigModel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ControlProjectFeatureConfigAutoAnnotateConfigModel.fromMap(Map<String, dynamic> map) {
    return ControlProjectFeatureConfigAutoAnnotateConfigModel(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
