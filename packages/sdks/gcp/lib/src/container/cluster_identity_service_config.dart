// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterIdentityServiceConfig {
  /// Whether to enable the Identity Service component. It is disabled by default. Set `enabled=true` to enable.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ClusterIdentityServiceConfig].
  /// [enabled] Whether to enable the Identity Service component. It is disabled by default. Set `enabled=true` to enable.
  const ClusterIdentityServiceConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ClusterIdentityServiceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterIdentityServiceConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

