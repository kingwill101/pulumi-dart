// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_network_subnet_network_subnet_args_doc}
/// The set of arguments for NetworkSubnet.
/// {@endtemplate}
/// {@macro pulumi_index_network_subnet_network_subnet_args_doc}
class NetworkSubnetArgs {
  /// Range to allocate IPs from. Must be a subnet of the ip_range of the Network and must not overlap with any other subnets or with any destinations in routes.
  final pulumi.Input<String> ipRange;

  /// ID of the Network the subnet should be added to.
  final pulumi.Input<int> networkId;

  /// Name of network zone.
  final pulumi.Input<String> networkZone;

  /// Type of subnet. `server`, `cloud` or `vswitch`
  final pulumi.Input<String> type;

  /// ID of the vswitch, Required if type is `vswitch`
  final pulumi.Input<int>? vswitchId;

  /// Creates a new [NetworkSubnetArgs].
  /// [ipRange] Range to allocate IPs from. Must be a subnet of the ip_range of the Network and must not overlap with any other subnets or with any destinations in routes.
  /// [networkId] ID of the Network the subnet should be added to.
  /// [networkZone] Name of network zone.
  /// [type] Type of subnet. `server`, `cloud` or `vswitch`
  /// [vswitchId] ID of the vswitch, Required if type is `vswitch`
  NetworkSubnetArgs({
    required this.ipRange,
    required this.networkId,
    required this.networkZone,
    required this.type,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRange': ipRange,
      'networkId': networkId,
      'networkZone': networkZone,
      'type': type,
      'vswitchId': ?vswitchId,
    };
  }

  factory NetworkSubnetArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSubnetArgs(
      ipRange: pulumi.Input.fromValue(map['ipRange'] as String),
      networkId: pulumi.Input.fromValue(map['networkId'] as int),
      networkZone: pulumi.Input.fromValue(map['networkZone'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
