// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendAddressPoolTunnelInterface {
  /// The unique identifier of this Gateway Load Balancer Tunnel Interface.
  final pulumi.Input<int> identifier;
  /// The port number that this Gateway Load Balancer Tunnel Interface listens to.
  final pulumi.Input<int> port;
  /// The protocol used for this Gateway Load Balancer Tunnel Interface. Possible values are `None`, `Native` and `VXLAN`.
  final pulumi.Input<String> protocol;
  /// The traffic type of this Gateway Load Balancer Tunnel Interface. Possible values are `None`, `Internal` and `External`.
  final pulumi.Input<String> type;

  /// Creates a new [BackendAddressPoolTunnelInterface].
  /// [identifier] The unique identifier of this Gateway Load Balancer Tunnel Interface.
  /// [port] The port number that this Gateway Load Balancer Tunnel Interface listens to.
  /// [protocol] The protocol used for this Gateway Load Balancer Tunnel Interface. Possible values are `None`, `Native` and `VXLAN`.
  /// [type] The traffic type of this Gateway Load Balancer Tunnel Interface. Possible values are `None`, `Internal` and `External`.
  const BackendAddressPoolTunnelInterface({
    required this.identifier,
    required this.port,
    required this.protocol,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'port': port,
      'protocol': protocol,
      'type': type,
    };
  }

  factory BackendAddressPoolTunnelInterface.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolTunnelInterface(
      identifier: pulumi.Input.fromValue(map['identifier'] as int),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

