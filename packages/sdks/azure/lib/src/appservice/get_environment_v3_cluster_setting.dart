// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentV3ClusterSetting {
  /// The name of this v3 App Service Environment.
  final pulumi.Input<String> name;
  /// The value for the Cluster Setting.
  final pulumi.Input<String> value;

  /// Creates a new [GetEnvironmentV3ClusterSetting].
  /// [name] The name of this v3 App Service Environment.
  /// [value] The value for the Cluster Setting.
  const GetEnvironmentV3ClusterSetting({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetEnvironmentV3ClusterSetting.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentV3ClusterSetting(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

