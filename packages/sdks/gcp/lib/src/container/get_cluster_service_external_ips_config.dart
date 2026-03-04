// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterServiceExternalIpsConfig {
  /// When enabled, services with external ips specified will be allowed.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterServiceExternalIpsConfig].
  /// [enabled] When enabled, services with external ips specified will be allowed.
  GetClusterServiceExternalIpsConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterServiceExternalIpsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterServiceExternalIpsConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
