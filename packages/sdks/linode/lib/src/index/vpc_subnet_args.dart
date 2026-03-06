// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_subnet_ipv6.dart';

/// {@template pulumi_index_vpc_subnet_vpc_subnet_args_doc}
/// The set of arguments for VpcSubnet.
/// {@endtemplate}
/// {@macro pulumi_index_vpc_subnet_vpc_subnet_args_doc}
class VpcSubnetArgs {
  /// The IPv4 range of this subnet in CIDR format.
  ///
  /// * `ipv6` - (Optional) A list of IPv6 ranges under this VPC subnet. NOTE: IPv6 VPCs may not currently be available to all users.
  final pulumi.Input<String>? ipv4;
  /// The IPv6 ranges of this subnet.
  final pulumi.Input<List<VpcSubnetIpv6>>? ipv6s;
  /// The label of the VPC. Only contains ASCII letters, digits and dashes.
  final pulumi.Input<String> label;
  /// The id of the parent VPC for this VPC subnet.
  final pulumi.Input<int> vpcId;

  /// Creates a new [VpcSubnetArgs].
  /// [ipv4] The IPv4 range of this subnet in CIDR format.
  /// [ipv6s] The IPv6 ranges of this subnet.
  /// [label] The label of the VPC. Only contains ASCII letters, digits and dashes.
  /// [vpcId] The id of the parent VPC for this VPC subnet.
  const VpcSubnetArgs({
    this.ipv4,
    this.ipv6s,
    required this.label,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ?ipv4,
      'ipv6s': ?pulumi.Input.mapOptionalInputValue<List<VpcSubnetIpv6>, List<Map<String, dynamic>>>(ipv6s, (value) => pulumi.Input.encodeList<VpcSubnetIpv6, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': label,
      'vpcId': vpcId,
    };
  }

  factory VpcSubnetArgs.fromMap(Map<String, dynamic> map) {
    return VpcSubnetArgs(
      ipv4: (() { final guardedValue = map['ipv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6s: (() { final guardedValue = map['ipv6s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcSubnetIpv6>(guardedValue, (value) => VpcSubnetIpv6.fromMap((value as Map).cast<String, dynamic>()))); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as int),
    );
  }
}

