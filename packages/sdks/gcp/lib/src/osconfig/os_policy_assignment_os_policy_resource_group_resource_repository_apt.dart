// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt {
  /// Type of archive files in this repository.
  /// Possible values are: `ARCHIVE_TYPE_UNSPECIFIED`, `DEB`, `DEB_SRC`.
  final pulumi.Input<String> archiveType;
  /// List of components for this repository. Must
  /// contain at least one item.
  final pulumi.Input<List<String>> components;
  /// Distribution of this repository.
  final pulumi.Input<String> distribution;
  /// URI of the key file for this repository. The agent
  /// maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  final pulumi.Input<String>? gpgKey;
  /// URI for this repository.
  final pulumi.Input<String> uri;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt].
  /// [archiveType] Type of archive files in this repository.
  /// [components] List of components for this repository. Must
  /// [distribution] Distribution of this repository.
  /// [gpgKey] URI of the key file for this repository. The agent
  /// [uri] URI for this repository.
  OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt({
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

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt(
      archiveType: (map['archiveType'] as String).input(),
      components: ((map['components'] as List).cast<String>()).input(),
      distribution: (map['distribution'] as String).input(),
      gpgKey: map['gpgKey'] == null ? null : (map['gpgKey'] as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

