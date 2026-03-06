// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesPackageRepositoryApt {
  /// Type of archive files in this repository. The default behavior is DEB.
  /// Default value is `DEB`.
  /// Possible values are: `DEB`, `DEB_SRC`.
  final pulumi.Input<String>? archiveType;
  /// List of components for this repository. Must contain at least one item.
  final pulumi.Input<List<String>> components;
  /// Distribution of this repository.
  final pulumi.Input<String> distribution;
  /// URI of the key file for this repository. The agent maintains a keyring at
  /// /etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg containing all the keys in any applied guest policy.
  final pulumi.Input<String>? gpgKey;
  /// URI for this repository.
  final pulumi.Input<String> uri;

  /// Creates a new [GuestPoliciesPackageRepositoryApt].
  /// [archiveType] Type of archive files in this repository. The default behavior is DEB.
  /// [components] List of components for this repository. Must contain at least one item.
  /// [distribution] Distribution of this repository.
  /// [gpgKey] URI of the key file for this repository. The agent maintains a keyring at
  /// [uri] URI for this repository.
  const GuestPoliciesPackageRepositoryApt({
    this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveType': ?archiveType,
      'components': components,
      'distribution': distribution,
      'gpgKey': ?gpgKey,
      'uri': uri,
    };
  }

  factory GuestPoliciesPackageRepositoryApt.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesPackageRepositoryApt(
      archiveType: (() { final guardedValue = map['archiveType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      components: pulumi.Input.fromValue((map['components'] as List).cast<String>()),
      distribution: pulumi.Input.fromValue(map['distribution'] as String),
      gpgKey: (() { final guardedValue = map['gpgKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

