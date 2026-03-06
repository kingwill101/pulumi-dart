// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerNetwork {
  /// (list) A list of alias IP addresses assigned to the server in the network.
  final pulumi.Input<List<String>> aliasIps;
  /// (string) The server's IP address within the network.
  final pulumi.Input<String> ip;
  /// (string) The MAC address associated with the server's private network interface.
  final pulumi.Input<String> macAddress;
  /// (int) The unique identifier for the network.
  final pulumi.Input<int> networkId;

  /// Creates a new [GetServerNetwork].
  /// [aliasIps] (list) A list of alias IP addresses assigned to the server in the network.
  /// [ip] (string) The server's IP address within the network.
  /// [macAddress] (string) The MAC address associated with the server's private network interface.
  /// [networkId] (int) The unique identifier for the network.
  const GetServerNetwork({
    required this.aliasIps,
    required this.ip,
    required this.macAddress,
    required this.networkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasIps': aliasIps,
      'ip': ip,
      'macAddress': macAddress,
      'networkId': networkId,
    };
  }

  factory GetServerNetwork.fromMap(Map<String, dynamic> map) {
    return GetServerNetwork(
      aliasIps: pulumi.Input.fromValue((map['aliasIps'] as List).cast<String>()),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      macAddress: pulumi.Input.fromValue(map['macAddress'] as String),
      networkId: pulumi.Input.fromValue(map['networkId'] as int),
    );
  }
}

