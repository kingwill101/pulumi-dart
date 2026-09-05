// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterFabricSetting {
  /// The name of the Fabric Setting, such as `Security` or `Federation`.
  final pulumi.Input<String> name;
  /// A map containing settings for the specified Fabric Setting.
  final pulumi.Input<Map<String, String>?>? parameters;

  /// Creates a new [ClusterFabricSetting].
  /// [name] The name of the Fabric Setting, such as `Security` or `Federation`.
  /// [parameters] A map containing settings for the specified Fabric Setting.
  const ClusterFabricSetting({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory ClusterFabricSetting.fromMap(Map<String, dynamic> map) {
    return ClusterFabricSetting(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
