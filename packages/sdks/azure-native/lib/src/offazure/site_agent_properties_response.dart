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
      id: pulumi.Input.fromValue(map['id'] as String),
      keyVaultId: (() {
        final guardedValue = map['keyVaultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultUri: (() {
        final guardedValue = map['keyVaultUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastHeartBeatUtc: pulumi.Input.fromValue(
        map['lastHeartBeatUtc'] as String,
      ),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
