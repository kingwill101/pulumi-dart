// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_control_plane_endpoints_config_dns_endpoint_config.dart';
import 'cluster_control_plane_endpoints_config_ip_endpoints_config.dart';

class ClusterControlPlaneEndpointsConfig {
  /// DNS endpoint configuration.
  final pulumi.Input<ClusterControlPlaneEndpointsConfigDnsEndpointConfig>? dnsEndpointConfig;
  /// IP endpoint configuration.
  final pulumi.Input<ClusterControlPlaneEndpointsConfigIpEndpointsConfig>? ipEndpointsConfig;

  /// Creates a new [ClusterControlPlaneEndpointsConfig].
  /// [dnsEndpointConfig] DNS endpoint configuration.
  /// [ipEndpointsConfig] IP endpoint configuration.
  const ClusterControlPlaneEndpointsConfig({
    this.dnsEndpointConfig,
    this.ipEndpointsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsEndpointConfig': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlaneEndpointsConfigDnsEndpointConfig, Map<String, dynamic>>(dnsEndpointConfig, (value) => value.toMap()),
      'ipEndpointsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlaneEndpointsConfigIpEndpointsConfig, Map<String, dynamic>>(ipEndpointsConfig, (value) => value.toMap()),
    };
  }

  factory ClusterControlPlaneEndpointsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneEndpointsConfig(
      dnsEndpointConfig: (() { final guardedValue = map['dnsEndpointConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterControlPlaneEndpointsConfigDnsEndpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipEndpointsConfig: (() { final guardedValue = map['ipEndpointsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
