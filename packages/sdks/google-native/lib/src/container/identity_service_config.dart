// ignore_for_file: unused_element, unnecessary_cast


/// IdentityServiceConfig is configuration for Identity Service which allows customers to use external identity providers with the K8S API
class IdentityServiceConfig {
  /// Whether to enable the Identity Service component
  final bool? enabled;

  /// Creates a new [IdentityServiceConfig].
  /// [enabled] Whether to enable the Identity Service component
  IdentityServiceConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory IdentityServiceConfig.fromMap(Map<String, dynamic> map) {
    return IdentityServiceConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

