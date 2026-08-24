// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsProductionEnvVars {
  /// Available values: "plain*text", "secret*text".
  final pulumi.Input<String> type;
  /// Environment variable value.
  final pulumi.Input<String> value;

  /// Creates a new [GetPagesProjectDeploymentConfigsProductionEnvVars].
  /// [type] Available values: "plain*text", "secret*text".
  /// [value] Environment variable value.
  const GetPagesProjectDeploymentConfigsProductionEnvVars({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetPagesProjectDeploymentConfigsProductionEnvVars.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsProductionEnvVars(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
