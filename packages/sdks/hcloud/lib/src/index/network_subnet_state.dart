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
  const NetworkSubnetState({
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
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRange: (() { final guardedValue = map['ipRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      networkZone: (() { final guardedValue = map['networkZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

