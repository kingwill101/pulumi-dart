// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceDiscoveryEndpoint {
  /// Output only. IP address of the exposed endpoint clients connect to.
  final pulumi.Input<String> address;
  /// Output only. The network where the IP address of the discovery endpoint will be
  /// reserved, in the form of
  /// projects/{network_project}/global/networks/{network_id}.
  final pulumi.Input<String> network;
  /// Output only. The port number of the exposed endpoint.
  final pulumi.Input<int> port;

  /// Creates a new [GetInstanceDiscoveryEndpoint].
  /// [address] Output only. IP address of the exposed endpoint clients connect to.
  /// [network] Output only. The network where the IP address of the discovery endpoint will be
  /// [port] Output only. The port number of the exposed endpoint.
  const GetInstanceDiscoveryEndpoint({
    required this.address,
    required this.network,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'network': network,
      'port': port,
    };
  }

  factory GetInstanceDiscoveryEndpoint.fromMap(Map<String, dynamic> map) {
    return GetInstanceDiscoveryEndpoint(
      address: pulumi.Input.fromValue(map['address'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
