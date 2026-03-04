// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServersServerNetwork {
  final pulumi.Input<List<String>> aliasIps;
  final pulumi.Input<String> ip;
  final pulumi.Input<String> macAddress;
  final pulumi.Input<int> networkId;

  /// Creates a new [GetServersServerNetwork].
  /// [aliasIps] Required.
  /// [ip] Required.
  /// [macAddress] Required.
  /// [networkId] Required.
  GetServersServerNetwork({
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

  factory GetServersServerNetwork.fromMap(Map<String, dynamic> map) {
    return GetServersServerNetwork(
      aliasIps: pulumi.Input.fromValue(
        (map['aliasIps'] as List).cast<String>(),
      ),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      macAddress: pulumi.Input.fromValue(map['macAddress'] as String),
      networkId: pulumi.Input.fromValue(map['networkId'] as int),
    );
  }
}
