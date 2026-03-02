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
    this.gateway,
    this.ipRange,
    this.networkId,
    this.networkZone,
    this.type,
    this.vswitchId,
  });

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
      gateway: map['gateway'] == null ? null : (map['gateway']! as String).input(),
      ipRange: map['ipRange'] == null ? null : (map['ipRange']! as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as int).input(),
      networkZone: map['networkZone'] == null ? null : (map['networkZone']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as int).input(),
    );
  }
}

