// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Each logical network interface is effectively a network and IP pair.
class LogicalNetworkInterfaceResponse {
  /// Whether this interface is the default gateway for the instance. Only one interface can be the default gateway for the instance.
  final pulumi.Input<bool> defaultGateway;
  /// IP address in the network
  final pulumi.Input<String> ipAddress;
  /// Name of the network
  final pulumi.Input<String> network;
  /// Type of network.
  final pulumi.Input<String> networkType;

  /// Creates a new [LogicalNetworkInterfaceResponse].
  /// [defaultGateway] Whether this interface is the default gateway for the instance. Only one interface can be the default gateway for the instance.
  /// [ipAddress] IP address in the network
  /// [network] Name of the network
  /// [networkType] Type of network.
  const LogicalNetworkInterfaceResponse({
    required this.defaultGateway,
    required this.ipAddress,
    required this.network,
    required this.networkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultGateway': defaultGateway,
      'ipAddress': ipAddress,
      'network': network,
      'networkType': networkType,
    };
  }

  factory LogicalNetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return LogicalNetworkInterfaceResponse(
      defaultGateway: pulumi.Input.fromValue(map['defaultGateway'] as bool),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
    );
  }
}
