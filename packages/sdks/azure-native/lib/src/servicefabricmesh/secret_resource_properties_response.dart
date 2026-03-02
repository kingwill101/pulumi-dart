// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the properties of a secret resource.
class SecretResourcePropertiesResponse {
  /// The type of the content stored in the secret value. The value of this property is opaque to Service Fabric. Once set, the value of this property cannot be changed.
  final pulumi.Input<String>? contentType;
  /// User readable description of the secret.
  final pulumi.Input<String>? description;
  /// Describes the kind of secret.
  /// Expected value is 'SecretResourceProperties'.
  final pulumi.Input<String> kind;
  /// State of the resource.
  final pulumi.Input<String> provisioningState;
  /// Status of the resource.
  final pulumi.Input<String> status;
  /// Gives additional information about the current status of the secret.
  final pulumi.Input<String> statusDetails;

  /// Creates a new [SecretResourcePropertiesResponse].
  /// [contentType] The type of the content stored in the secret value. The value of this property is opaque to Service Fabric. Once set, the value of this property cannot be changed.
  /// [description] User readable description of the secret.
  /// [kind] Describes the kind of secret.
  /// [provisioningState] State of the resource.
  /// [status] Status of the resource.
  /// [statusDetails] Gives additional information about the current status of the secret.
  SecretResourcePropertiesResponse({
    this.contentType,
    this.description,
    required this.kind,
    required this.provisioningState,
    required this.status,
    required this.statusDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'description': ?description,
      'kind': kind,
      'provisioningState': provisioningState,
      'status': status,
      'statusDetails': statusDetails,
    };
  }

  factory SecretResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SecretResourcePropertiesResponse(
      contentType: map['contentType'] == null ? null : (map['contentType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      kind: (map['kind'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      status: (map['status'] as String).input(),
      statusDetails: (map['statusDetails'] as String).input(),
    );
  }
}

