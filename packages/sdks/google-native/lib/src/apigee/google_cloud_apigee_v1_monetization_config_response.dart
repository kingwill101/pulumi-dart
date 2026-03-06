// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Monetization add-on.
class GoogleCloudApigeeV1MonetizationConfigResponse {
  /// Flag that specifies whether the Monetization add-on is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GoogleCloudApigeeV1MonetizationConfigResponse].
  /// [enabled] Flag that specifies whether the Monetization add-on is enabled.
  const GoogleCloudApigeeV1MonetizationConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GoogleCloudApigeeV1MonetizationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1MonetizationConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

