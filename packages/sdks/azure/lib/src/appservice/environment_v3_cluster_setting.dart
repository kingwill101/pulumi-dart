// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentV3ClusterSetting {
  /// The name of the Cluster Setting.
  final pulumi.Input<String> name;
  /// The value for the Cluster Setting.
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentV3ClusterSetting].
  /// [name] The name of the Cluster Setting.
  /// [value] The value for the Cluster Setting.
  EnvironmentV3ClusterSetting({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory EnvironmentV3ClusterSetting.fromMap(Map<String, dynamic> map) {
    return EnvironmentV3ClusterSetting(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

