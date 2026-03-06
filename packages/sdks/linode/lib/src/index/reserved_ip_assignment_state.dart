// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_ip_assignment_vpc_nat11.dart';

/// Input properties used for looking up and filtering ReservedIpAssignment resources.
class ReservedIpAssignmentState {
  /// The resulting IPv4 address.
  final pulumi.Input<String>? address;
  /// If true, the instance will be rebooted to update network interfaces. This functionality is not affected by the `skip_implicit_reboots` provider argument.
  final pulumi.Input<bool>? applyImmediately;
  /// The default gateway for this address
  final pulumi.Input<String>? gateway;
  /// The ID of the Linode to allocate an IPv4 address for.
  final pulumi.Input<int>? linodeId;
  /// The number of bits set in the subnet mask.
  final pulumi.Input<int>? prefix;
  /// Whether the IPv4 address is public or private.
  final pulumi.Input<bool>? public;
  /// The reverse DNS assigned to this address.
  final pulumi.Input<String>? rdns;
  /// The region this IP resides in.
  final pulumi.Input<String>? region;
  /// The reservation status of the IP address
  final pulumi.Input<bool>? reserved;
  /// The mask that separates host bits from network bits for this address.
  final pulumi.Input<String>? subnetMask;
  /// The type of IP address.
  final pulumi.Input<String>? type;
  /// Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  final pulumi.Input<List<ReservedIpAssignmentVpcNat11>>? vpcNat11s;

  /// Creates a new [ReservedIpAssignmentState].
  /// [address] The resulting IPv4 address.
  /// [applyImmediately] If true, the instance will be rebooted to update network interfaces. This functionality is not affected by the `skip_implicit_reboots` provider argument.
  /// [gateway] The default gateway for this address
  /// [linodeId] The ID of the Linode to allocate an IPv4 address for.
  /// [prefix] The number of bits set in the subnet mask.
  /// [public] Whether the IPv4 address is public or private.
  /// [rdns] The reverse DNS assigned to this address.
  /// [region] The region this IP resides in.
  /// [reserved] The reservation status of the IP address
  /// [subnetMask] The mask that separates host bits from network bits for this address.
  /// [type] The type of IP address.
  /// [vpcNat11s] Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  const ReservedIpAssignmentState({
    this.address,
    this.applyImmediately,
    this.gateway,
    this.linodeId,
    this.prefix,
    this.public,
    this.rdns,
    this.region,
    this.reserved,
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
      'reserved': ?reserved,
      'subnetMask': ?subnetMask,
      'type': ?type,
      'vpcNat11s': ?pulumi.Input.mapOptionalInputValue<List<ReservedIpAssignmentVpcNat11>, List<Map<String, dynamic>>>(vpcNat11s, (value) => pulumi.Input.encodeList<ReservedIpAssignmentVpcNat11, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReservedIpAssignmentState.fromMap(Map<String, dynamic> map) {
    return ReservedIpAssignmentState(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linodeId: (() { final guardedValue = map['linodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rdns: (() { final guardedValue = map['rdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reserved: (() { final guardedValue = map['reserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetMask: (() { final guardedValue = map['subnetMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcNat11s: (() { final guardedValue = map['vpcNat11s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReservedIpAssignmentVpcNat11>(guardedValue, (value) => ReservedIpAssignmentVpcNat11.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

