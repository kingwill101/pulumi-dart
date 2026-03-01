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
  VpcSubnetArgs({
    pulumi.Output<String>? ipv4,
    pulumi.Output<List<VpcSubnetIpv6>>? ipv6s,
    required pulumi.Output<String> label,
    required pulumi.Output<int> vpcId,
  }) :
      ipv4 = pulumi.Input.asOptionalInput<String>(ipv4),
      ipv6s = pulumi.Input.asOptionalInput<List<VpcSubnetIpv6>>(ipv6s),
      label = pulumi.Input.asInput<String>(label),
      vpcId = pulumi.Input.asInput<int>(vpcId);

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
      ipv4: map['ipv4'] == null ? null : pulumi.Output.create<String>(map['ipv4'] as String),
      ipv6s: map['ipv6s'] == null ? null : pulumi.Output.create<List<VpcSubnetIpv6>>(pulumi.Input.decodeList<VpcSubnetIpv6>(map['ipv6s'], (value) => VpcSubnetIpv6.fromMap((value as Map).cast<String, dynamic>()))),
      label: pulumi.Output.create<String>(map['label'] as String),
      vpcId: pulumi.Output.create<int>(map['vpcId'] as int),
    );
  }
}

