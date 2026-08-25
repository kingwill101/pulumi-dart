// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterControlPlaneEndpointsConfigIpEndpointsConfig {
  /// Controls whether to allow direct IP access. Defaults to `true`.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ClusterControlPlaneEndpointsConfigIpEndpointsConfig].
  /// [enabled] Controls whether to allow direct IP access. Defaults to `true`.
  const ClusterControlPlaneEndpointsConfigIpEndpointsConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneEndpointsConfigIpEndpointsConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
