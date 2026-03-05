// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Verifier Workspace resource.
class VerifierWorkspacePropertiesResponse {
  final pulumi.Input<String>? description;
  /// Provisioning states of a resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [VerifierWorkspacePropertiesResponse].
  /// [description] Optional.
  /// [provisioningState] Provisioning states of a resource.
  VerifierWorkspacePropertiesResponse({
    this.description,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'provisioningState': provisioningState,
    };
  }

  factory VerifierWorkspacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VerifierWorkspacePropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

