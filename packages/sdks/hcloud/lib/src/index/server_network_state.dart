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
  /// ID of the Network to attach the Server to. Using `subnet_id` is preferred. Required if `subnet_id` is not set. If `subnet_id` or `ip` are not set, the Server will be attached to the last subnet (ordered by `ip_range`).
  final pulumi.Input<int>? networkId;
  /// ID of the Server.
  final pulumi.Input<int>? serverId;
  /// ID of the Subnet to attach the Server to. Required if `network_id` is not set.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [ServerNetworkState].
  /// [aliasIps] Additional IPs to assign to the Server.
  /// [ip] IP to assign to the Server.
  /// [macAddress] MAC address of the Server on the Network.
  /// [networkId] ID of the Network to attach the Server to. Using `subnet_id` is preferred. Required if `subnet_id` is not set. If `subnet_id` or `ip` are not set, the Server will be attached to the last subnet (ordered by `ip_range`).
  /// [serverId] ID of the Server.
  /// [subnetId] ID of the Subnet to attach the Server to. Required if `network_id` is not set.
  ServerNetworkState({
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
      aliasIps: map['aliasIps'] == null ? null : ((map['aliasIps'] as List).cast<String>()).input(),
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress'] as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId'] as int).input(),
      serverId: map['serverId'] == null ? null : (map['serverId'] as int).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

