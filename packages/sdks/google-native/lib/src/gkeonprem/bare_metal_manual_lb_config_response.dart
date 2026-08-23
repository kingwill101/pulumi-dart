// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configuration parameters for a manual load balancer.
class BareMetalManualLbConfigResponse {
  /// Whether manual load balancing is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [BareMetalManualLbConfigResponse].
  /// [enabled] Whether manual load balancing is enabled.
  const BareMetalManualLbConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BareMetalManualLbConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalManualLbConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
