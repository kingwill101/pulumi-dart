// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipv6.dart';

/// Input properties used for looking up and filtering Vpc resources.
class VpcState {
  /// The date and time when the VPC was created.
  final pulumi.Input<String>? created;
  /// The user-defined description of this VPC.
  ///
  /// * `ipv6` - (Optional) A list of IPv6 allocations under this VPC.
  final pulumi.Input<String>? description;
  /// The IPv6 configuration of this VPC.
  final pulumi.Input<List<VpcIpv6>>? ipv6s;
  /// The label of the VPC. This field can only contain ASCII letters, digits and dashes.
  final pulumi.Input<String>? label;
  /// The region of the VPC.
  final pulumi.Input<String>? region;
  /// The date and time when the VPC was last updated.
  final pulumi.Input<String>? updated;

  /// Creates a new [VpcState].
  /// [created] The date and time when the VPC was created.
  /// [description] The user-defined description of this VPC.
  /// [ipv6s] The IPv6 configuration of this VPC.
  /// [label] The label of the VPC. This field can only contain ASCII letters, digits and dashes.
  /// [region] The region of the VPC.
  /// [updated] The date and time when the VPC was last updated.
  VpcState({
    pulumi.Output<String>? created,
    pulumi.Output<String>? description,
    pulumi.Output<List<VpcIpv6>>? ipv6s,
    pulumi.Output<String>? label,
    pulumi.Output<String>? region,
    pulumi.Output<String>? updated,
  }) :
      created = pulumi.Input.asOptionalInput<String>(created),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipv6s = pulumi.Input.asOptionalInput<List<VpcIpv6>>(ipv6s),
      label = pulumi.Input.asOptionalInput<String>(label),
      region = pulumi.Input.asOptionalInput<String>(region),
      updated = pulumi.Input.asOptionalInput<String>(updated);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'description': ?description,
      'ipv6s': ?pulumi.Input.mapOptionalInputValue<List<VpcIpv6>, List<Map<String, dynamic>>>(ipv6s, (value) => pulumi.Input.encodeList<VpcIpv6, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': ?label,
      'region': ?region,
      'updated': ?updated,
    };
  }

  factory VpcState.fromMap(Map<String, dynamic> map) {
    return VpcState(
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipv6s: map['ipv6s'] == null ? null : pulumi.Output.create<List<VpcIpv6>>(pulumi.Input.decodeList<VpcIpv6>(map['ipv6s'], (value) => VpcIpv6.fromMap((value as Map).cast<String, dynamic>()))),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
    );
  }
}

