// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt {
  /// Required. Type of archive files in this repository.
  /// Possible values:
  /// ARCHIVE_TYPE_UNSPECIFIED
  /// DEB
  /// DEB_SRC
  final pulumi.Input<String> archiveType;
  /// Required. List of components for this repository. Must contain at least one
  /// item.
  final pulumi.Input<List<String>> components;
  /// Required. Distribution of this repository.
  final pulumi.Input<String> distribution;
  /// URI of the key file for this repository. The agent maintains a
  /// keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  final pulumi.Input<String>? gpgKey;
  /// Required. URI for this repository.
  final pulumi.Input<String> uri;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt].
  /// [archiveType] Required. Type of archive files in this repository.
  /// [components] Required. List of components for this repository. Must contain at least one
  /// [distribution] Required. Distribution of this repository.
  /// [gpgKey] URI of the key file for this repository. The agent maintains a
  /// [uri] Required. URI for this repository.
  const V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveType': archiveType,
      'components': components,
      'distribution': distribution,
      'gpgKey': ?gpgKey,
      'uri': uri,
    };
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt(
      archiveType: pulumi.Input.fromValue(map['archiveType'] as String),
      components: pulumi.Input.fromValue((map['components'] as List).cast<String>()),
      distribution: pulumi.Input.fromValue(map['distribution'] as String),
      gpgKey: (() { final guardedValue = map['gpgKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
