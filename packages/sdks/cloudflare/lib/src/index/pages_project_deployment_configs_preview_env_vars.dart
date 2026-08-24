// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewEnvVars {
  /// Available values: "plain*text", "secret*text".
  final pulumi.Input<String> type;
  /// Environment variable value.
  final pulumi.Input<String> value;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewEnvVars].
  /// [type] Available values: "plain*text", "secret*text".
  /// [value] Environment variable value.
  const PagesProjectDeploymentConfigsPreviewEnvVars({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewEnvVars.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewEnvVars(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
