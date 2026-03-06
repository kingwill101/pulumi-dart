// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configuration parameters for a manual load balancer.
class BareMetalManualLbConfig {
  /// Whether manual load balancing is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [BareMetalManualLbConfig].
  /// [enabled] Whether manual load balancing is enabled.
  const BareMetalManualLbConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory BareMetalManualLbConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalManualLbConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

