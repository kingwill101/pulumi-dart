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
  ClusterControlPlaneEndpointsConfig({
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
      dnsEndpointConfig: map['dnsEndpointConfig'] == null ? null : (ClusterControlPlaneEndpointsConfigDnsEndpointConfig.fromMap((map['dnsEndpointConfig'] as Map).cast<String, dynamic>())).input(),
      ipEndpointsConfig: map['ipEndpointsConfig'] == null ? null : (ClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap((map['ipEndpointsConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

