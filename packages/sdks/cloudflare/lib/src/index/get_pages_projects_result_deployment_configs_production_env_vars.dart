// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionEnvVars {
  /// Available values: "plain*text", "secret*text".
  final pulumi.Input<String> type;
  /// Environment variable value.
  final pulumi.Input<String> value;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionEnvVars].
  /// [type] Available values: "plain*text", "secret*text".
  /// [value] Environment variable value.
  const GetPagesProjectsResultDeploymentConfigsProductionEnvVars({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionEnvVars.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionEnvVars(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
