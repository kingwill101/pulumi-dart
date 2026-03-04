// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'psc_config_response_redis_v1beta1.dart';

/// Endpoints on each network, for Redis clients to connect to the cluster.
class DiscoveryEndpointResponseRedisV1beta1 {
  /// Address of the exposed Redis endpoint used by clients to connect to the service. The address could be either IP or hostname.
  final pulumi.Input<String> address;

  /// The port number of the exposed Redis endpoint.
  final pulumi.Input<int> port;

  /// Customer configuration for where the endpoint is created and accessed from.
  final pulumi.Input<PscConfigResponseRedisV1beta1> pscConfig;

  /// Creates a new [DiscoveryEndpointResponseRedisV1beta1].
  /// [address] Address of the exposed Redis endpoint used by clients to connect to the service. The address could be either IP or hostname.
  /// [port] The port number of the exposed Redis endpoint.
  /// [pscConfig] Customer configuration for where the endpoint is created and accessed from.
  DiscoveryEndpointResponseRedisV1beta1({
    required this.address,
    required this.port,
    required this.pscConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
      'pscConfig':
          pulumi.Input.mapInputValue<
            PscConfigResponseRedisV1beta1,
            Map<String, dynamic>
          >(pscConfig, (value) => value.toMap()),
    };
  }

  factory DiscoveryEndpointResponseRedisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiscoveryEndpointResponseRedisV1beta1(
      address: pulumi.Input.fromValue(map['address'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      pscConfig: pulumi.Input.fromValue(
        PscConfigResponseRedisV1beta1.fromMap(
          (map['pscConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
