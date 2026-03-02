// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_repository_resource_apt_repository_archive_type_osconfig_v1alpha.dart';

/// Represents a single apt package repository. These will be added to a repo file that will be managed at `/etc/apt/sources.list.d/google_osconfig.list`.
class OSPolicyResourceRepositoryResourceAptRepositoryOsconfigV1alpha {
  /// Type of archive files in this repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceAptRepositoryArchiveTypeOsconfigV1alpha> archiveType;
  /// List of components for this repository. Must contain at least one item.
  final pulumi.Input<List<String>> components;
  /// Distribution of this repository.
  final pulumi.Input<String> distribution;
  /// URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  final pulumi.Input<String>? gpgKey;
  /// URI for this repository.
  final pulumi.Input<String> uri;

  /// Creates a new [OSPolicyResourceRepositoryResourceAptRepositoryOsconfigV1alpha].
  /// [archiveType] Type of archive files in this repository.
  /// [components] List of components for this repository. Must contain at least one item.
  /// [distribution] Distribution of this repository.
  /// [gpgKey] URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  /// [uri] URI for this repository.
  OSPolicyResourceRepositoryResourceAptRepositoryOsconfigV1alpha({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveType': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceAptRepositoryArchiveTypeOsconfigV1alpha, String>(archiveType, (value) => value.value),
      'components': components,
      'distribution': distribution,
      'gpgKey': ?gpgKey,
      'uri': uri,
    };
  }

  factory OSPolicyResourceRepositoryResourceAptRepositoryOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceAptRepositoryOsconfigV1alpha(
      archiveType: (OSPolicyResourceRepositoryResourceAptRepositoryArchiveTypeOsconfigV1alpha.fromValue(map['archiveType'] as String)).input(),
      components: ((map['components'] as List).cast<String>()).input(),
      distribution: (map['distribution'] as String).input(),
      gpgKey: map['gpgKey'] == null ? null : (map['gpgKey']! as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

