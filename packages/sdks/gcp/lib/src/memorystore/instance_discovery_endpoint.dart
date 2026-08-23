// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDiscoveryEndpoint {
  /// (Output)
  /// Output only. IP address of the exposed endpoint clients connect to.
  final pulumi.Input<String>? address;
  /// (Output)
  /// Output only. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final pulumi.Input<String>? network;
  /// (Output)
  /// Output only. Ports of the exposed endpoint.
  final pulumi.Input<int>? port;

  /// Creates a new [InstanceDiscoveryEndpoint].
  /// [address] (Output)
  /// [network] (Output)
  /// [port] (Output)
  const InstanceDiscoveryEndpoint({
    this.address,
    this.network,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'network': ?network,
      'port': ?port,
    };
  }

  factory InstanceDiscoveryEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceDiscoveryEndpoint(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
