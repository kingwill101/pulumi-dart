// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Connectors Platform add-on.
class GoogleCloudApigeeV1ConnectorsPlatformConfigResponse {
  /// Flag that specifies whether the Connectors Platform add-on is enabled.
  final pulumi.Input<bool> enabled;
  /// Time at which the Connectors Platform add-on expires in milliseconds since epoch. If unspecified, the add-on will never expire.
  final pulumi.Input<String> expiresAt;

  /// Creates a new [GoogleCloudApigeeV1ConnectorsPlatformConfigResponse].
  /// [enabled] Flag that specifies whether the Connectors Platform add-on is enabled.
  /// [expiresAt] Time at which the Connectors Platform add-on expires in milliseconds since epoch. If unspecified, the add-on will never expire.
  const GoogleCloudApigeeV1ConnectorsPlatformConfigResponse({
    required this.enabled,
    required this.expiresAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'expiresAt': expiresAt,
    };
  }

  factory GoogleCloudApigeeV1ConnectorsPlatformConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ConnectorsPlatformConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
    );
  }
}

