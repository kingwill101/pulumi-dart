// ignore_for_file: unused_element, unnecessary_cast


class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileRemote {
  /// SHA256 checksum of the remote file.
  final String? sha256Checksum;
  /// Required. URI from which to fetch the object. It should contain both the
  /// protocol and path following the format `{protocol}://{location}`.
  final String uri;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileRemote].
  /// [sha256Checksum] SHA256 checksum of the remote file.
  /// [uri] Required. URI from which to fetch the object. It should contain both the
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileRemote({
    this.sha256Checksum,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256Checksum': ?sha256Checksum,
      'uri': uri,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileRemote.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileRemote(
      sha256Checksum: map['sha256Checksum'] == null ? null : map['sha256Checksum'] as String,
      uri: map['uri'] as String,
    );
  }
}

