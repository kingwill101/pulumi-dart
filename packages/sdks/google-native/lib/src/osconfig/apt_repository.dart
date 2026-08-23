// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apt_repository_archive_type.dart';

/// Represents a single Apt package repository. This repository is added to a repo file that is stored at `/etc/apt/sources.list.d/google_osconfig.list`.
class AptRepository {
  /// Type of archive files in this repository. The default behavior is DEB.
  final pulumi.Input<AptRepositoryArchiveType>? archiveType;
  /// List of components for this repository. Must contain at least one item.
  final pulumi.Input<List<String>> components;
  /// Distribution of this repository.
  final pulumi.Input<String> distribution;
  /// URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg` containing all the keys in any applied guest policy.
  final pulumi.Input<String>? gpgKey;
  /// URI for this repository.
  final pulumi.Input<String> uri;

  /// Creates a new [AptRepository].
  /// [archiveType] Type of archive files in this repository. The default behavior is DEB.
  /// [components] List of components for this repository. Must contain at least one item.
  /// [distribution] Distribution of this repository.
  /// [gpgKey] URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg` containing all the keys in any applied guest policy.
  /// [uri] URI for this repository.
  const AptRepository({
    this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveType': ?pulumi.Input.mapOptionalInputValue<AptRepositoryArchiveType, String>(archiveType, (value) => value.wireValue),
      'components': components,
      'distribution': distribution,
      'gpgKey': ?gpgKey,
      'uri': uri,
    };
  }

  factory AptRepository.fromMap(Map<String, dynamic> map) {
    return AptRepository(
      archiveType: (() { final guardedValue = map['archiveType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AptRepositoryArchiveType.fromValue(guardedValue as String)); })(),
      components: pulumi.Input.fromValue((map['components'] as List).cast<String>()),
      distribution: pulumi.Input.fromValue(map['distribution'] as String),
      gpgKey: (() { final guardedValue = map['gpgKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
