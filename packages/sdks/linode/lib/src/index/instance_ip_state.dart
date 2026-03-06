// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_ip_vpc_nat11.dart';

/// Input properties used for looking up and filtering InstanceIp resources.
class InstanceIpState {
  /// The resulting IPv4 address.
  final pulumi.Input<String>? address;
  /// If true, the instance will be rebooted to update network interfaces.
  final pulumi.Input<bool>? applyImmediately;
  /// The default gateway for this address
  final pulumi.Input<String>? gateway;
  /// The ID of the Linode to allocate an IPv4 address for.
  final pulumi.Input<int>? linodeId;
  /// The number of bits set in the subnet mask.
  final pulumi.Input<int>? prefix;
  /// Whether the IPv4 address is public or private. Defaults to true.
  final pulumi.Input<bool>? public;
  /// The reverse DNS assigned to this address.
  final pulumi.Input<String>? rdns;
  /// The region this IP resides in.
  final pulumi.Input<String>? region;
  /// The mask that separates host bits from network bits for this address.
  final pulumi.Input<String>? subnetMask;
  /// The type of IP address. (`ipv4`, `ipv6`, `ipv6/pool`, `ipv6/range`)
  final pulumi.Input<String>? type;
  /// Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  final pulumi.Input<List<InstanceIpVpcNat11>>? vpcNat11s;

  /// Creates a new [InstanceIpState].
  /// [address] The resulting IPv4 address.
  /// [applyImmediately] If true, the instance will be rebooted to update network interfaces.
  /// [gateway] The default gateway for this address
  /// [linodeId] The ID of the Linode to allocate an IPv4 address for.
  /// [prefix] The number of bits set in the subnet mask.
  /// [public] Whether the IPv4 address is public or private. Defaults to true.
  /// [rdns] The reverse DNS assigned to this address.
  /// [region] The region this IP resides in.
  /// [subnetMask] The mask that separates host bits from network bits for this address.
  /// [type] The type of IP address. (`ipv4`, `ipv6`, `ipv6/pool`, `ipv6/range`)
  /// [vpcNat11s] Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  const InstanceIpState({
    this.address,
    this.applyImmediately,
    this.gateway,
    this.linodeId,
    this.prefix,
    this.public,
    this.rdns,
    this.region,
    this.subnetMask,
    this.type,
    this.vpcNat11s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'applyImmediately': ?applyImmediately,
      'gateway': ?gateway,
      'linodeId': ?linodeId,
      'prefix': ?prefix,
      'public': ?public,
      'rdns': ?rdns,
      'region': ?region,
      'subnetMask': ?subnetMask,
      'type': ?type,
      'vpcNat11s': ?pulumi.Input.mapOptionalInputValue<List<InstanceIpVpcNat11>, List<Map<String, dynamic>>>(vpcNat11s, (value) => pulumi.Input.encodeList<InstanceIpVpcNat11, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceIpState.fromMap(Map<String, dynamic> map) {
    return InstanceIpState(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linodeId: (() { final guardedValue = map['linodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rdns: (() { final guardedValue = map['rdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetMask: (() { final guardedValue = map['subnetMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcNat11s: (() { final guardedValue = map['vpcNat11s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceIpVpcNat11>(guardedValue, (value) => InstanceIpVpcNat11.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

