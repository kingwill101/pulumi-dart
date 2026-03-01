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
    required pulumi.Output<String> ipRange,
    required pulumi.Output<int> networkId,
    required pulumi.Output<String> networkZone,
    required pulumi.Output<String> type,
    pulumi.Output<int>? vswitchId,
  }) :
      ipRange = pulumi.Input.asInput<String>(ipRange),
      networkId = pulumi.Input.asInput<int>(networkId),
      networkZone = pulumi.Input.asInput<String>(networkZone),
      type = pulumi.Input.asInput<String>(type),
      vswitchId = pulumi.Input.asOptionalInput<int>(vswitchId);

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
      ipRange: pulumi.Output.create<String>(map['ipRange'] as String),
      networkId: pulumi.Output.create<int>(map['networkId'] as int),
      networkZone: pulumi.Output.create<String>(map['networkZone'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<int>(map['vswitchId'] as int),
    );
  }
}

