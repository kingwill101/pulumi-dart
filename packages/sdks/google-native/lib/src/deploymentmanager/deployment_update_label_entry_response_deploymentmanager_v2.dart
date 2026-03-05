// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label object for DeploymentUpdate
class DeploymentUpdateLabelEntryResponseDeploymentmanagerV2 {
  /// Key of the label
  final pulumi.Input<String> key;
  /// Value of the label
  final pulumi.Input<String> value;

  /// Creates a new [DeploymentUpdateLabelEntryResponseDeploymentmanagerV2].
  /// [key] Key of the label
  /// [value] Value of the label
  DeploymentUpdateLabelEntryResponseDeploymentmanagerV2({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory DeploymentUpdateLabelEntryResponseDeploymentmanagerV2.fromMap(Map<String, dynamic> map) {
    return DeploymentUpdateLabelEntryResponseDeploymentmanagerV2(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

