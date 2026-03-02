// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_subnet_ipv6.dart';
import 'vpc_subnet_linode.dart';

/// Input properties used for looking up and filtering VpcSubnet resources.
class VpcSubnetState {
  /// The date and time when the VPC was created.
  final pulumi.Input<String>? created;
  /// The IPv4 range of this subnet in CIDR format.
  ///
  /// * `ipv6` - (Optional) A list of IPv6 ranges under this VPC subnet. NOTE: IPv6 VPCs may not currently be available to all users.
  final pulumi.Input<String>? ipv4;
  /// The IPv6 ranges of this subnet.
  final pulumi.Input<List<VpcSubnetIpv6>>? ipv6s;
  /// The label of the VPC. Only contains ASCII letters, digits and dashes.
  final pulumi.Input<String>? label;
  /// A list of Linode that added to this subnet.
  final pulumi.Input<List<VpcSubnetLinode>>? linodes;
  /// The date and time when the VPC was last updated.
  final pulumi.Input<String>? updated;
  /// The id of the parent VPC for this VPC subnet.
  final pulumi.Input<int>? vpcId;

  /// Creates a new [VpcSubnetState].
  /// [created] The date and time when the VPC was created.
  /// [ipv4] The IPv4 range of this subnet in CIDR format.
  /// [ipv6s] The IPv6 ranges of this subnet.
  /// [label] The label of the VPC. Only contains ASCII letters, digits and dashes.
  /// [linodes] A list of Linode that added to this subnet.
  /// [updated] The date and time when the VPC was last updated.
  /// [vpcId] The id of the parent VPC for this VPC subnet.
  VpcSubnetState({
    this.created,
    this.ipv4,
    this.ipv6s,
    this.label,
    this.linodes,
    this.updated,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'ipv4': ?ipv4,
      'ipv6s': ?pulumi.Input.mapOptionalInputValue<List<VpcSubnetIpv6>, List<Map<String, dynamic>>>(ipv6s, (value) => pulumi.Input.encodeList<VpcSubnetIpv6, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': ?label,
      'linodes': ?pulumi.Input.mapOptionalInputValue<List<VpcSubnetLinode>, List<Map<String, dynamic>>>(linodes, (value) => pulumi.Input.encodeList<VpcSubnetLinode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updated': ?updated,
      'vpcId': ?vpcId,
    };
  }

  factory VpcSubnetState.fromMap(Map<String, dynamic> map) {
    return VpcSubnetState(
      created: map['created'] == null ? null : (map['created'] as String).input(),
      ipv4: map['ipv4'] == null ? null : (map['ipv4'] as String).input(),
      ipv6s: map['ipv6s'] == null ? null : (pulumi.Input.decodeList<VpcSubnetIpv6>(map['ipv6s'], (value) => VpcSubnetIpv6.fromMap((value as Map).cast<String, dynamic>()))).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      linodes: map['linodes'] == null ? null : (pulumi.Input.decodeList<VpcSubnetLinode>(map['linodes'], (value) => VpcSubnetLinode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updated: map['updated'] == null ? null : (map['updated'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as int).input(),
    );
  }
}

