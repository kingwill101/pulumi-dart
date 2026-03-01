// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_server_network_server_network_args_doc}
/// The set of arguments for ServerNetwork.
/// {@endtemplate}
/// {@macro pulumi_index_server_network_server_network_args_doc}
class ServerNetworkArgs {
  /// Additional IPs to assign to the Server.
  final pulumi.Input<List<String>>? aliasIps;
  /// IP to assign to the Server.
  final pulumi.Input<String>? ip;
  /// ID of the Network to attach the Server to. Using `subnet_id` is preferred. Required if `subnet_id` is not set. If `subnet_id` or `ip` are not set, the Server will be attached to the last subnet (ordered by `ip_range`).
  final pulumi.Input<int>? networkId;
  /// ID of the Server.
  final pulumi.Input<int> serverId;
  /// ID of the Subnet to attach the Server to. Required if `network_id` is not set.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [ServerNetworkArgs].
  /// [aliasIps] Additional IPs to assign to the Server.
  /// [ip] IP to assign to the Server.
  /// [networkId] ID of the Network to attach the Server to. Using `subnet_id` is preferred. Required if `subnet_id` is not set. If `subnet_id` or `ip` are not set, the Server will be attached to the last subnet (ordered by `ip_range`).
  /// [serverId] ID of the Server.
  /// [subnetId] ID of the Subnet to attach the Server to. Required if `network_id` is not set.
  ServerNetworkArgs({
    pulumi.Output<List<String>>? aliasIps,
    pulumi.Output<String>? ip,
    pulumi.Output<int>? networkId,
    required pulumi.Output<int> serverId,
    pulumi.Output<String>? subnetId,
  }) :
      aliasIps = pulumi.Input.asOptionalInput<List<String>>(aliasIps),
      ip = pulumi.Input.asOptionalInput<String>(ip),
      networkId = pulumi.Input.asOptionalInput<int>(networkId),
      serverId = pulumi.Input.asInput<int>(serverId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasIps': ?aliasIps,
      'ip': ?ip,
      'networkId': ?networkId,
      'serverId': serverId,
      'subnetId': ?subnetId,
    };
  }

  factory ServerNetworkArgs.fromMap(Map<String, dynamic> map) {
    return ServerNetworkArgs(
      aliasIps: map['aliasIps'] == null ? null : pulumi.Output.create<List<String>>((map['aliasIps'] as List).cast<String>()),
      ip: map['ip'] == null ? null : pulumi.Output.create<String>(map['ip'] as String),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<int>(map['networkId'] as int),
      serverId: pulumi.Output.create<int>(map['serverId'] as int),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

