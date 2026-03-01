// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_discovery_endpoint_psc_config.dart';

class GetClusterDiscoveryEndpoint {
  /// Output only. Network address of the exposed Redis endpoint used by clients to connect to the service.
  final String address;
  /// Output only. The port number of the exposed Redis endpoint.
  final int port;
  /// Output only. Customer configuration for where the endpoint
  /// is created and accessed from.
  final List<GetClusterDiscoveryEndpointPscConfig> pscConfigs;

  /// Creates a new [GetClusterDiscoveryEndpoint].
  /// [address] Output only. Network address of the exposed Redis endpoint used by clients to connect to the service.
  /// [port] Output only. The port number of the exposed Redis endpoint.
  /// [pscConfigs] Output only. Customer configuration for where the endpoint
  GetClusterDiscoveryEndpoint({
    required this.address,
    required this.port,
    required this.pscConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
      'pscConfigs': pulumi.Input.encodeList<GetClusterDiscoveryEndpointPscConfig, Map<String, dynamic>>(pscConfigs, (value) => value.toMap()),
    };
  }

  factory GetClusterDiscoveryEndpoint.fromMap(Map<String, dynamic> map) {
    return GetClusterDiscoveryEndpoint(
      address: map['address'] as String,
      port: map['port'] as int,
      pscConfigs: pulumi.Input.decodeList<GetClusterDiscoveryEndpointPscConfig>(map['pscConfigs'], (value) => GetClusterDiscoveryEndpointPscConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

