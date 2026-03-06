// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipv6.dart';

/// {@template pulumi_index_vpc_vpc_args_doc}
/// The set of arguments for Vpc.
/// {@endtemplate}
/// {@macro pulumi_index_vpc_vpc_args_doc}
class VpcArgs {
  /// The user-defined description of this VPC.
  ///
  /// * `ipv6` - (Optional) A list of IPv6 allocations under this VPC.
  final pulumi.Input<String>? description;
  /// The IPv6 configuration of this VPC.
  final pulumi.Input<List<VpcIpv6>>? ipv6s;
  /// The label of the VPC. This field can only contain ASCII letters, digits and dashes.
  final pulumi.Input<String> label;
  /// The region of the VPC.
  final pulumi.Input<String> region;

  /// Creates a new [VpcArgs].
  /// [description] The user-defined description of this VPC.
  /// [ipv6s] The IPv6 configuration of this VPC.
  /// [label] The label of the VPC. This field can only contain ASCII letters, digits and dashes.
  /// [region] The region of the VPC.
  const VpcArgs({
    this.description,
    this.ipv6s,
    required this.label,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipv6s': ?pulumi.Input.mapOptionalInputValue<List<VpcIpv6>, List<Map<String, dynamic>>>(ipv6s, (value) => pulumi.Input.encodeList<VpcIpv6, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': label,
      'region': region,
    };
  }

  factory VpcArgs.fromMap(Map<String, dynamic> map) {
    return VpcArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6s: (() { final guardedValue = map['ipv6s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcIpv6>(guardedValue, (value) => VpcIpv6.fromMap((value as Map).cast<String, dynamic>()))); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

