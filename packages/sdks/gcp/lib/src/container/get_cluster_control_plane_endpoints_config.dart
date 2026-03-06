// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_control_plane_endpoints_config_dns_endpoint_config.dart';
import 'get_cluster_control_plane_endpoints_config_ip_endpoints_config.dart';

class GetClusterControlPlaneEndpointsConfig {
  /// DNS endpoint configuration.
  final pulumi.Input<List<GetClusterControlPlaneEndpointsConfigDnsEndpointConfig>> dnsEndpointConfigs;
  /// IP endpoint configuration.
  final pulumi.Input<List<GetClusterControlPlaneEndpointsConfigIpEndpointsConfig>> ipEndpointsConfigs;

  /// Creates a new [GetClusterControlPlaneEndpointsConfig].
  /// [dnsEndpointConfigs] DNS endpoint configuration.
  /// [ipEndpointsConfigs] IP endpoint configuration.
  const GetClusterControlPlaneEndpointsConfig({
    required this.dnsEndpointConfigs,
    required this.ipEndpointsConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsEndpointConfigs': pulumi.Input.mapInputValue<List<GetClusterControlPlaneEndpointsConfigDnsEndpointConfig>, List<Map<String, dynamic>>>(dnsEndpointConfigs, (value) => pulumi.Input.encodeList<GetClusterControlPlaneEndpointsConfigDnsEndpointConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipEndpointsConfigs': pulumi.Input.mapInputValue<List<GetClusterControlPlaneEndpointsConfigIpEndpointsConfig>, List<Map<String, dynamic>>>(ipEndpointsConfigs, (value) => pulumi.Input.encodeList<GetClusterControlPlaneEndpointsConfigIpEndpointsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterControlPlaneEndpointsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterControlPlaneEndpointsConfig(
      dnsEndpointConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterControlPlaneEndpointsConfigDnsEndpointConfig>(map['dnsEndpointConfigs']!, (value) => GetClusterControlPlaneEndpointsConfigDnsEndpointConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ipEndpointsConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterControlPlaneEndpointsConfigIpEndpointsConfig>(map['ipEndpointsConfigs']!, (value) => GetClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

