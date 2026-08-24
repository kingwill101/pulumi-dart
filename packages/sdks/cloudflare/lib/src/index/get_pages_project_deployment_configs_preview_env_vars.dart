// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsPreviewEnvVars {
  /// Available values: "plain*text", "secret*text".
  final pulumi.Input<String> type;
  /// Environment variable value.
  final pulumi.Input<String> value;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreviewEnvVars].
  /// [type] Available values: "plain*text", "secret*text".
  /// [value] Environment variable value.
  const GetPagesProjectDeploymentConfigsPreviewEnvVars({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreviewEnvVars.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreviewEnvVars(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
