// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Advanced API Ops add-on.
class GoogleCloudApigeeV1AdvancedApiOpsConfigResponse {
  /// Flag that specifies whether the Advanced API Ops add-on is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GoogleCloudApigeeV1AdvancedApiOpsConfigResponse].
  /// [enabled] Flag that specifies whether the Advanced API Ops add-on is enabled.
  GoogleCloudApigeeV1AdvancedApiOpsConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GoogleCloudApigeeV1AdvancedApiOpsConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AdvancedApiOpsConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

