// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Cloud Data Lineage integration.
class CloudDataLineageIntegrationResponse {
  /// Optional. Whether or not Cloud Data Lineage integration is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [CloudDataLineageIntegrationResponse].
  /// [enabled] Optional. Whether or not Cloud Data Lineage integration is enabled.
  CloudDataLineageIntegrationResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory CloudDataLineageIntegrationResponse.fromMap(Map<String, dynamic> map) {
    return CloudDataLineageIntegrationResponse(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

