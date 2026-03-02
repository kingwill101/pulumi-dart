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
  ReservedIpAssignmentState({
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
      address: map['address'] == null ? null : (map['address'] as String).input(),
      applyImmediately: map['applyImmediately'] == null ? null : (map['applyImmediately'] as bool).input(),
      gateway: map['gateway'] == null ? null : (map['gateway'] as String).input(),
      linodeId: map['linodeId'] == null ? null : (map['linodeId'] as int).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as int).input(),
      public: map['public'] == null ? null : (map['public'] as bool).input(),
      rdns: map['rdns'] == null ? null : (map['rdns'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      reserved: map['reserved'] == null ? null : (map['reserved'] as bool).input(),
      subnetMask: map['subnetMask'] == null ? null : (map['subnetMask'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      vpcNat11s: map['vpcNat11s'] == null ? null : (pulumi.Input.decodeList<ReservedIpAssignmentVpcNat11>(map['vpcNat11s'], (value) => ReservedIpAssignmentVpcNat11.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

