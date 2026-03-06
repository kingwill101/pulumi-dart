// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterServiceExternalIpsConfig {
  /// Controls whether external ips specified by a service will be allowed. It is enabled by default.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterServiceExternalIpsConfig].
  /// [enabled] Controls whether external ips specified by a service will be allowed. It is enabled by default.
  const ClusterServiceExternalIpsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterServiceExternalIpsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterServiceExternalIpsConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

