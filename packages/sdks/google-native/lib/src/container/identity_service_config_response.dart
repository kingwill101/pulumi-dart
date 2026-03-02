// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IdentityServiceConfig is configuration for Identity Service which allows customers to use external identity providers with the K8S API
class IdentityServiceConfigResponse {
  /// Whether to enable the Identity Service component
  final pulumi.Input<bool> enabled;

  /// Creates a new [IdentityServiceConfigResponse].
  /// [enabled] Whether to enable the Identity Service component
  IdentityServiceConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory IdentityServiceConfigResponse.fromMap(Map<String, dynamic> map) {
    return IdentityServiceConfigResponse(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

