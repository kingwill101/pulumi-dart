// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerNetwork resources.
class ServerNetworkState {
  /// Additional IPs to assign to the Server.
  final pulumi.Input<List<String>>? aliasIps;
  /// IP to assign to the Server.
  final pulumi.Input<String>? ip;
  /// MAC address of the Server on the Network.
  final pulumi.Input<String>? macAddress;
  /// ID of the Network to attach the Server to. Using `subnetId` is preferred. Required if `subnetId` is not set. If `subnetId` or `ip` are not set, the Server will be attached to the last subnet (ordered by `ipRange`).
  final pulumi.Input<int>? networkId;
  /// ID of the Server.
  final pulumi.Input<int>? serverId;
  /// ID of the Subnet to attach the Server to. Required if `networkId` is not set.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [ServerNetworkState].
  /// [aliasIps] Additional IPs to assign to the Server.
  /// [ip] IP to assign to the Server.
  /// [macAddress] MAC address of the Server on the Network.
  /// [networkId] ID of the Network to attach the Server to. Using `subnetId` is preferred. Required if `subnetId` is not set. If `subnetId` or `ip` are not set, the Server will be attached to the last subnet (ordered by `ipRange`).
  /// [serverId] ID of the Server.
  /// [subnetId] ID of the Subnet to attach the Server to. Required if `networkId` is not set.
  const ServerNetworkState({
    this.aliasIps,
    this.ip,
    this.macAddress,
    this.networkId,
    this.serverId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasIps': ?aliasIps,
      'ip': ?ip,
      'macAddress': ?macAddress,
      'networkId': ?networkId,
      'serverId': ?serverId,
      'subnetId': ?subnetId,
    };
  }

  factory ServerNetworkState.fromMap(Map<String, dynamic> map) {
    return ServerNetworkState(
      aliasIps: (() { final guardedValue = map['aliasIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
