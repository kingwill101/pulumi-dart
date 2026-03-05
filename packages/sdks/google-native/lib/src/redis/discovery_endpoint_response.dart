// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'psc_config_response.dart';

/// Endpoints on each network, for Redis clients to connect to the cluster.
class DiscoveryEndpointResponse {
  /// Address of the exposed Redis endpoint used by clients to connect to the service. The address could be either IP or hostname.
  final pulumi.Input<String> address;
  /// The port number of the exposed Redis endpoint.
  final pulumi.Input<int> port;
  /// Customer configuration for where the endpoint is created and accessed from.
  final pulumi.Input<PscConfigResponse> pscConfig;

  /// Creates a new [DiscoveryEndpointResponse].
  /// [address] Address of the exposed Redis endpoint used by clients to connect to the service. The address could be either IP or hostname.
  /// [port] The port number of the exposed Redis endpoint.
  /// [pscConfig] Customer configuration for where the endpoint is created and accessed from.
  DiscoveryEndpointResponse({
    required this.address,
    required this.port,
    required this.pscConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
      'pscConfig': pulumi.Input.mapInputValue<PscConfigResponse, Map<String, dynamic>>(pscConfig, (value) => value.toMap()),
    };
  }

  factory DiscoveryEndpointResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveryEndpointResponse(
      address: pulumi.Input.fromValue(map['address'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      pscConfig: pulumi.Input.fromValue(PscConfigResponse.fromMap((map['pscConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

