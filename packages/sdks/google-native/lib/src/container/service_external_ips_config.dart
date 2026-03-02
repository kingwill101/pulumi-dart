// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config to block services with externalIPs field.
class ServiceExternalIPsConfig {
  /// Whether Services with ExternalIPs field are allowed or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ServiceExternalIPsConfig].
  /// [enabled] Whether Services with ExternalIPs field are allowed or not.
  ServiceExternalIPsConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ServiceExternalIPsConfig.fromMap(Map<String, dynamic> map) {
    return ServiceExternalIPsConfig(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

