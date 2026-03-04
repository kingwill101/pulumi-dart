// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileRemote {
  /// SHA256 checksum of the remote file.
  final pulumi.Input<String>? sha256Checksum;

  /// Required. URI from which to fetch the object. It should contain both the
  /// protocol and path following the format `{protocol}://{location}`.
  final pulumi.Input<String> uri;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileRemote].
  /// [sha256Checksum] SHA256 checksum of the remote file.
  /// [uri] Required. URI from which to fetch the object. It should contain both the
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileRemote({
    this.sha256Checksum,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sha256Checksum': ?sha256Checksum, 'uri': uri};
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileRemote.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecValidateFileRemote(
      sha256Checksum: (() {
        final guardedValue = map['sha256Checksum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
