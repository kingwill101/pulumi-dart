// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about DevOps capability.
class DevOpsCapabilityResponse {
  /// Gets the name of the DevOps capability.
  final pulumi.Input<String> name;
  /// Gets the value of the DevOps capability.
  final pulumi.Input<String> value;

  /// Creates a new [DevOpsCapabilityResponse].
  /// [name] Gets the name of the DevOps capability.
  /// [value] Gets the value of the DevOps capability.
  const DevOpsCapabilityResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DevOpsCapabilityResponse.fromMap(Map<String, dynamic> map) {
    return DevOpsCapabilityResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

