// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IdentityServiceConfig is configuration for Identity Service which allows customers to use external identity providers with the K8S API
class IdentityServiceConfigResponseContainerV1beta1 {
  /// Whether to enable the Identity Service component
  final pulumi.Input<bool> enabled;

  /// Creates a new [IdentityServiceConfigResponseContainerV1beta1].
  /// [enabled] Whether to enable the Identity Service component
  IdentityServiceConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory IdentityServiceConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return IdentityServiceConfigResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

