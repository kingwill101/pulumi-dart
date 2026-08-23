// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_repository_resource_apt_repository_archive_type.dart';

/// Represents a single apt package repository. These will be added to a repo file that will be managed at `/etc/apt/sources.list.d/google_osconfig.list`.
class OSPolicyResourceRepositoryResourceAptRepository {
  /// Type of archive files in this repository.
  final pulumi.Input<OSPolicyResourceRepositoryResourceAptRepositoryArchiveType> archiveType;
  /// List of components for this repository. Must contain at least one item.
  final pulumi.Input<List<String>> components;
  /// Distribution of this repository.
  final pulumi.Input<String> distribution;
  /// URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  final pulumi.Input<String>? gpgKey;
  /// URI for this repository.
  final pulumi.Input<String> uri;

  /// Creates a new [OSPolicyResourceRepositoryResourceAptRepository].
  /// [archiveType] Type of archive files in this repository.
  /// [components] List of components for this repository. Must contain at least one item.
  /// [distribution] Distribution of this repository.
  /// [gpgKey] URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  /// [uri] URI for this repository.
  const OSPolicyResourceRepositoryResourceAptRepository({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveType': pulumi.Input.mapInputValue<OSPolicyResourceRepositoryResourceAptRepositoryArchiveType, String>(archiveType, (value) => value.wireValue),
      'components': components,
      'distribution': distribution,
      'gpgKey': ?gpgKey,
      'uri': uri,
    };
  }

  factory OSPolicyResourceRepositoryResourceAptRepository.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceAptRepository(
      archiveType: pulumi.Input.fromValue(OSPolicyResourceRepositoryResourceAptRepositoryArchiveType.fromValue(map['archiveType']! as String)),
      components: pulumi.Input.fromValue((map['components'] as List).cast<String>()),
      distribution: pulumi.Input.fromValue(map['distribution'] as String),
      gpgKey: (() { final guardedValue = map['gpgKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
