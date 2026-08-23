// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the PodSecurityPolicy feature.
class PodSecurityPolicyConfig {
  /// Enable the PodSecurityPolicy controller for this cluster. If enabled, pods must be valid under a PodSecurityPolicy to be created.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [PodSecurityPolicyConfig].
  /// [enabled] Enable the PodSecurityPolicy controller for this cluster. If enabled, pods must be valid under a PodSecurityPolicy to be created.
  const PodSecurityPolicyConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory PodSecurityPolicyConfig.fromMap(Map<String, dynamic> map) {
    return PodSecurityPolicyConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
