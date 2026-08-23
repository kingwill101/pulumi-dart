// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerNetwork {
  /// Alias IPs the server should have in the Network.
  ///
  /// There is a bug with Terraform `1.4+` which causes the network to be detached & attached on every apply. Set `aliasIps = []` to avoid this. See #650 for details.
  final pulumi.Input<List<String>>? aliasIps;
  /// Specify the IP the server should get in the network
  final pulumi.Input<String>? ip;
  /// (Optional, string) The MAC address the private interface of the server has
  final pulumi.Input<String>? macAddress;
  /// ID of the network to attach the server to. Using `subnetId` is preferred. When used alone without `subnetId`, the server will be attached to the last subnet (ordered by `ipRange`), which may be unpredictable.
  final pulumi.Input<int>? networkId;
  /// ID of the network subnet to attach the server to.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [ServerNetwork].
  /// [aliasIps] Alias IPs the server should have in the Network.
  /// [ip] Specify the IP the server should get in the network
  /// [macAddress] (Optional, string) The MAC address the private interface of the server has
  /// [networkId] ID of the network to attach the server to. Using `subnetId` is preferred. When used alone without `subnetId`, the server will be attached to the last subnet (ordered by `ipRange`), which may be unpredictable.
  /// [subnetId] ID of the network subnet to attach the server to.
  const ServerNetwork({
    this.aliasIps,
    this.ip,
    this.macAddress,
    this.networkId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasIps': ?aliasIps,
      'ip': ?ip,
      'macAddress': ?macAddress,
      'networkId': ?networkId,
      'subnetId': ?subnetId,
    };
  }

  factory ServerNetwork.fromMap(Map<String, dynamic> map) {
    return ServerNetwork(
      aliasIps: (() { final guardedValue = map['aliasIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
