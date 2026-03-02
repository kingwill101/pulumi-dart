// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerNetwork {
  /// Alias IPs the server should have in the Network.
  ///
  /// There is a bug with Terraform `1.4+` which causes the network to be detached & attached on every apply. Set `alias_ips = []` to avoid this. See #650 for details.
  final pulumi.Input<List<String>>? aliasIps;
  /// Specify the IP the server should get in the network
  final pulumi.Input<String>? ip;
  /// (Optional, string) The MAC address the private interface of the server has
  final pulumi.Input<String>? macAddress;
  /// ID of the network
  final pulumi.Input<int> networkId;

  /// Creates a new [ServerNetwork].
  /// [aliasIps] Alias IPs the server should have in the Network.
  /// [ip] Specify the IP the server should get in the network
  /// [macAddress] (Optional, string) The MAC address the private interface of the server has
  /// [networkId] ID of the network
  ServerNetwork({
    this.aliasIps,
    this.ip,
    this.macAddress,
    required this.networkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasIps': ?aliasIps,
      'ip': ?ip,
      'macAddress': ?macAddress,
      'networkId': networkId,
    };
  }

  factory ServerNetwork.fromMap(Map<String, dynamic> map) {
    return ServerNetwork(
      aliasIps: map['aliasIps'] == null ? null : ((map['aliasIps']! as List).cast<String>()).input(),
      ip: map['ip'] == null ? null : (map['ip']! as String).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress']! as String).input(),
      networkId: (map['networkId'] as int).input(),
    );
  }
}

