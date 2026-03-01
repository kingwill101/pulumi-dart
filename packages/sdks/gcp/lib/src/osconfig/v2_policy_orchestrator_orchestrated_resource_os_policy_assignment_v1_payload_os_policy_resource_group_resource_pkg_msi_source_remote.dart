// ignore_for_file: unused_element, unnecessary_cast


class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceRemote {
  /// SHA256 checksum of the remote file.
  final String? sha256Checksum;
  /// Required. URI from which to fetch the object. It should contain both the
  /// protocol and path following the format `{protocol}://{location}`.
  final String uri;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceRemote].
  /// [sha256Checksum] SHA256 checksum of the remote file.
  /// [uri] Required. URI from which to fetch the object. It should contain both the
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceRemote({
    this.sha256Checksum,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256Checksum': ?sha256Checksum,
      'uri': uri,
    };
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceRemote.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceRemote(
      sha256Checksum: map['sha256Checksum'] == null ? null : map['sha256Checksum'] as String,
      uri: map['uri'] as String,
    );
  }
}

