// ignore_for_file: unused_element, unnecessary_cast


/// Properties of Verifier Workspace resource.
class VerifierWorkspacePropertiesResponse {
  final String? description;
  /// Provisioning states of a resource.
  final String provisioningState;

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
      description: map['description'] == null ? null : map['description'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

