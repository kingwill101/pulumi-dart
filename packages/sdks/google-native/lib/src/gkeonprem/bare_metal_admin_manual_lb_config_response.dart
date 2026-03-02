// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminManualLbConfig represents configuration parameters for a manual load balancer.
class BareMetalAdminManualLbConfigResponse {
  /// Whether manual load balancing is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [BareMetalAdminManualLbConfigResponse].
  /// [enabled] Whether manual load balancing is enabled.
  BareMetalAdminManualLbConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BareMetalAdminManualLbConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminManualLbConfigResponse(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

