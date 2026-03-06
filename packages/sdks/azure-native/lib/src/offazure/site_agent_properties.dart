// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class for site agent properties.
class SiteAgentProperties {
  /// Gets or sets the key vault ARM Id.
  final pulumi.Input<String>? keyVaultId;
  /// Gets or sets the key vault URI.
  final pulumi.Input<String>? keyVaultUri;

  /// Creates a new [SiteAgentProperties].
  /// [keyVaultId] Gets or sets the key vault ARM Id.
  /// [keyVaultUri] Gets or sets the key vault URI.
  const SiteAgentProperties({
    this.keyVaultId,
    this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': ?keyVaultId,
      'keyVaultUri': ?keyVaultUri,
    };
  }

  factory SiteAgentProperties.fromMap(Map<String, dynamic> map) {
    return SiteAgentProperties(
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultUri: (() { final guardedValue = map['keyVaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

