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
      aliasIps: ((map['aliasIps'] as List).cast<String>()).input(),
      ip: (map['ip'] as String).input(),
      macAddress: (map['macAddress'] as String).input(),
      networkId: (map['networkId'] as int).input(),
    );
  }
}

