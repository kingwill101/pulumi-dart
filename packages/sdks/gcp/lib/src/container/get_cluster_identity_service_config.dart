// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterIdentityServiceConfig {
  /// Whether to enable the Identity Service component.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterIdentityServiceConfig].
  /// [enabled] Whether to enable the Identity Service component.
  GetClusterIdentityServiceConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterIdentityServiceConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterIdentityServiceConfig(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

