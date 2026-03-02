// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class for site agent properties.
class SiteAgentPropertiesResponse {
  /// Gets the ID of the agent.
  final pulumi.Input<String> id;
  /// Gets or sets the key vault ARM Id.
  final pulumi.Input<String>? keyVaultId;
  /// Gets or sets the key vault URI.
  final pulumi.Input<String>? keyVaultUri;
  /// Gets the last heartbeat time of the agent in UTC.
  final pulumi.Input<String> lastHeartBeatUtc;
  /// Gets the version of the agent.
  final pulumi.Input<String> version;

  /// Creates a new [SiteAgentPropertiesResponse].
  /// [id] Gets the ID of the agent.
  /// [keyVaultId] Gets or sets the key vault ARM Id.
  /// [keyVaultUri] Gets or sets the key vault URI.
  /// [lastHeartBeatUtc] Gets the last heartbeat time of the agent in UTC.
  /// [version] Gets the version of the agent.
  SiteAgentPropertiesResponse({
    required this.id,
    this.keyVaultId,
    this.keyVaultUri,
    required this.lastHeartBeatUtc,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keyVaultId': ?keyVaultId,
      'keyVaultUri': ?keyVaultUri,
      'lastHeartBeatUtc': lastHeartBeatUtc,
      'version': version,
    };
  }

  factory SiteAgentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SiteAgentPropertiesResponse(
      id: (map['id'] as String).input(),
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId'] as String).input(),
      keyVaultUri: map['keyVaultUri'] == null ? null : (map['keyVaultUri'] as String).input(),
      lastHeartBeatUtc: (map['lastHeartBeatUtc'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

