// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label object for Deployments
class DeploymentLabelEntryResponseDeploymentmanagerV2beta {
  /// Key of the label
  final pulumi.Input<String> key;

  /// Value of the label
  final pulumi.Input<String> value;

  /// Creates a new [DeploymentLabelEntryResponseDeploymentmanagerV2beta].
  /// [key] Key of the label
  /// [value] Value of the label
  DeploymentLabelEntryResponseDeploymentmanagerV2beta({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory DeploymentLabelEntryResponseDeploymentmanagerV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentLabelEntryResponseDeploymentmanagerV2beta(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
