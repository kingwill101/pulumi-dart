// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Integration add-on.
class GoogleCloudApigeeV1IntegrationConfigResponse {
  /// Flag that specifies whether the Integration add-on is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GoogleCloudApigeeV1IntegrationConfigResponse].
  /// [enabled] Flag that specifies whether the Integration add-on is enabled.
  GoogleCloudApigeeV1IntegrationConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GoogleCloudApigeeV1IntegrationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1IntegrationConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

