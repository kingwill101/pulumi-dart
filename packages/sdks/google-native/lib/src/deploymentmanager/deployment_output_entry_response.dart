// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Output object for Deployments
class DeploymentOutputEntryResponse {
  /// Key of the output
  final pulumi.Input<String> key;
  /// Value of the label
  final pulumi.Input<String> value;

  /// Creates a new [DeploymentOutputEntryResponse].
  /// [key] Key of the output
  /// [value] Value of the label
  const DeploymentOutputEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory DeploymentOutputEntryResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentOutputEntryResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
