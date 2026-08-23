// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterControlPlaneEndpointsConfigIpEndpointsConfig {
  /// Controls whether to allow direct IP access.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterControlPlaneEndpointsConfigIpEndpointsConfig].
  /// [enabled] Controls whether to allow direct IP access.
  const GetClusterControlPlaneEndpointsConfigIpEndpointsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterControlPlaneEndpointsConfigIpEndpointsConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
