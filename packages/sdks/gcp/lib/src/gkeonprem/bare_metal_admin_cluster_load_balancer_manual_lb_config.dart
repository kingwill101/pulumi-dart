// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterLoadBalancerManualLbConfig {
  /// Whether manual load balancing is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [BareMetalAdminClusterLoadBalancerManualLbConfig].
  /// [enabled] Whether manual load balancing is enabled.
  const BareMetalAdminClusterLoadBalancerManualLbConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BareMetalAdminClusterLoadBalancerManualLbConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerManualLbConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

