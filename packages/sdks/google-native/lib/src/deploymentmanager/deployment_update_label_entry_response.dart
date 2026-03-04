// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label object for DeploymentUpdate
class DeploymentUpdateLabelEntryResponse {
  /// Key of the label
  final pulumi.Input<String> key;

  /// Value of the label
  final pulumi.Input<String> value;

  /// Creates a new [DeploymentUpdateLabelEntryResponse].
  /// [key] Key of the label
  /// [value] Value of the label
  DeploymentUpdateLabelEntryResponse({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory DeploymentUpdateLabelEntryResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentUpdateLabelEntryResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
