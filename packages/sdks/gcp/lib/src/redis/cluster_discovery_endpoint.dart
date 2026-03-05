// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_discovery_endpoint_psc_config.dart';

class ClusterDiscoveryEndpoint {
  /// Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  final pulumi.Input<String>? address;
  /// Output only. The port number of the exposed Redis endpoint.
  final pulumi.Input<int>? port;
  /// Output only. Customer configuration for where the endpoint
  /// is created and accessed from.
  /// Structure is documented below.
  final pulumi.Input<ClusterDiscoveryEndpointPscConfig>? pscConfig;

  /// Creates a new [ClusterDiscoveryEndpoint].
  /// [address] Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  /// [port] Output only. The port number of the exposed Redis endpoint.
  /// [pscConfig] Output only. Customer configuration for where the endpoint
  ClusterDiscoveryEndpoint({
    this.address,
    this.port,
    this.pscConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
      'pscConfig': ?pulumi.Input.mapOptionalInputValue<ClusterDiscoveryEndpointPscConfig, Map<String, dynamic>>(pscConfig, (value) => value.toMap()),
    };
  }

  factory ClusterDiscoveryEndpoint.fromMap(Map<String, dynamic> map) {
    return ClusterDiscoveryEndpoint(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pscConfig: (() { final guardedValue = map['pscConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterDiscoveryEndpointPscConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

