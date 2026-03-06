// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IdentityServiceConfig is configuration for Identity Service which allows customers to use external identity providers with the K8S API
class IdentityServiceConfig {
  /// Whether to enable the Identity Service component
  final pulumi.Input<bool>? enabled;

  /// Creates a new [IdentityServiceConfig].
  /// [enabled] Whether to enable the Identity Service component
  const IdentityServiceConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory IdentityServiceConfig.fromMap(Map<String, dynamic> map) {
    return IdentityServiceConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

