// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkSubnet resources.
class NetworkSubnetState {
  final pulumi.Input<String>? gateway;
  /// Range to allocate IPs from. Must be a subnet of the ip_range of the Network and must not overlap with any other subnets or with any destinations in routes.
  final pulumi.Input<String>? ipRange;
  /// ID of the Network the subnet should be added to.
  final pulumi.Input<int>? networkId;
  /// Name of network zone.
  final pulumi.Input<String>? networkZone;
  /// Type of subnet. `server`, `cloud` or `vswitch`
  final pulumi.Input<String>? type;
  /// ID of the vswitch, Required if type is `vswitch`
  final pulumi.Input<int>? vswitchId;

  /// Creates a new [NetworkSubnetState].
  /// [gateway] Optional.
  /// [ipRange] Range to allocate IPs from. Must be a subnet of the ip_range of the Network and must not overlap with any other subnets or with any destinations in routes.
  /// [networkId] ID of the Network the subnet should be added to.
  /// [networkZone] Name of network zone.
  /// [type] Type of subnet. `server`, `cloud` or `vswitch`
  /// [vswitchId] ID of the vswitch, Required if type is `vswitch`
  NetworkSubnetState({
    pulumi.Output<String>? gateway,
    pulumi.Output<String>? ipRange,
    pulumi.Output<int>? networkId,
    pulumi.Output<String>? networkZone,
    pulumi.Output<String>? type,
    pulumi.Output<int>? vswitchId,
  }) :
      gateway = pulumi.Input.asOptionalInput<String>(gateway),
      ipRange = pulumi.Input.asOptionalInput<String>(ipRange),
      networkId = pulumi.Input.asOptionalInput<int>(networkId),
      networkZone = pulumi.Input.asOptionalInput<String>(networkZone),
      type = pulumi.Input.asOptionalInput<String>(type),
      vswitchId = pulumi.Input.asOptionalInput<int>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateway': ?gateway,
      'ipRange': ?ipRange,
      'networkId': ?networkId,
      'networkZone': ?networkZone,
      'type': ?type,
      'vswitchId': ?vswitchId,
    };
  }

  factory NetworkSubnetState.fromMap(Map<String, dynamic> map) {
    return NetworkSubnetState(
      gateway: map['gateway'] == null ? null : pulumi.Output.create<String>(map['gateway'] as String),
      ipRange: map['ipRange'] == null ? null : pulumi.Output.create<String>(map['ipRange'] as String),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<int>(map['networkId'] as int),
      networkZone: map['networkZone'] == null ? null : pulumi.Output.create<String>(map['networkZone'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<int>(map['vswitchId'] as int),
    );
  }
}

