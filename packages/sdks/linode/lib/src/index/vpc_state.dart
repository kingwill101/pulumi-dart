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
    this.created,
    this.description,
    this.ipv6s,
    this.label,
    this.region,
    this.updated,
  });

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
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6s: (() { final guardedValue = map['ipv6s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcIpv6>(guardedValue, (value) => VpcIpv6.fromMap((value as Map).cast<String, dynamic>()))); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

