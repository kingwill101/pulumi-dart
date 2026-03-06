// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configurations of the API Security add-on.
class GoogleCloudApigeeV1ApiSecurityConfigResponse {
  /// Flag that specifies whether the API security add-on is enabled.
  final pulumi.Input<bool> enabled;
  /// Time at which the API Security add-on expires in in milliseconds since epoch. If unspecified, the add-on will never expire.
  final pulumi.Input<String> expiresAt;

  /// Creates a new [GoogleCloudApigeeV1ApiSecurityConfigResponse].
  /// [enabled] Flag that specifies whether the API security add-on is enabled.
  /// [expiresAt] Time at which the API Security add-on expires in in milliseconds since epoch. If unspecified, the add-on will never expire.
  const GoogleCloudApigeeV1ApiSecurityConfigResponse({
    required this.enabled,
    required this.expiresAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'expiresAt': expiresAt,
    };
  }

  factory GoogleCloudApigeeV1ApiSecurityConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ApiSecurityConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
    );
  }
}

