// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label object for Deployments
class DeploymentLabelEntryDeploymentmanagerV2beta {
  /// Key of the label
  final pulumi.Input<String>? key;
  /// Value of the label
  final pulumi.Input<String>? value;

  /// Creates a new [DeploymentLabelEntryDeploymentmanagerV2beta].
  /// [key] Key of the label
  /// [value] Value of the label
  DeploymentLabelEntryDeploymentmanagerV2beta({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory DeploymentLabelEntryDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return DeploymentLabelEntryDeploymentmanagerV2beta(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

