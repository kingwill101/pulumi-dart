// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper {
  /// Required. The location of the repository directory.
  final pulumi.Input<String> baseUrl;
  /// The display name of the repository.
  final pulumi.Input<String>? displayName;
  /// URIs of GPG keys.
  final pulumi.Input<List<String>>? gpgKeys;
  /// Required. A one word, unique name for this repository. This is the `repo
  /// id` in the zypper config file and also the `displayName` if
  /// `displayName` is omitted. This id is also used as the unique
  /// identifier when checking for GuestPolicy conflicts.
  final pulumi.Input<String> id;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper].
  /// [baseUrl] Required. The location of the repository directory.
  /// [displayName] The display name of the repository.
  /// [gpgKeys] URIs of GPG keys.
  /// [id] Required. A one word, unique name for this repository. This is the `repo
  const V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': baseUrl,
      'displayName': ?displayName,
      'gpgKeys': ?gpgKeys,
      'id': id,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper(
      baseUrl: pulumi.Input.fromValue(map['baseUrl'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpgKeys: (() { final guardedValue = map['gpgKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
