// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label object for Deployments
class DeploymentLabelEntryResponseDeploymentmanagerV2 {
  /// Key of the label
  final pulumi.Input<String> key;
  /// Value of the label
  final pulumi.Input<String> value;

  /// Creates a new [DeploymentLabelEntryResponseDeploymentmanagerV2].
  /// [key] Key of the label
  /// [value] Value of the label
  const DeploymentLabelEntryResponseDeploymentmanagerV2({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory DeploymentLabelEntryResponseDeploymentmanagerV2.fromMap(Map<String, dynamic> map) {
    return DeploymentLabelEntryResponseDeploymentmanagerV2(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
