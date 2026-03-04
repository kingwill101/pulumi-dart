// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_vpc_vpc_args_doc}
/// The set of arguments for Vpc.
/// {@endtemplate}
/// {@macro pulumi_index_vpc_vpc_args_doc}
class VpcArgs {
  /// A free-form text field up to a limit of 255 characters to describe the VPC.
  final pulumi.Input<String>? description;

  /// The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than `/16` or smaller than `/24`.
  final pulumi.Input<String>? ipRange;

  /// A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only.
  final pulumi.Input<String>? name;

  /// The DigitalOcean region slug for the VPC's location.
  final pulumi.Input<String> region;

  /// Creates a new [VpcArgs].
  /// [description] A free-form text field up to a limit of 255 characters to describe the VPC.
  /// [ipRange] The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than `/16` or smaller than `/24`.
  /// [name] A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only.
  /// [region] The DigitalOcean region slug for the VPC's location.
  VpcArgs({this.description, this.ipRange, this.name, required this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipRange': ?ipRange,
      'name': ?name,
      'region': region,
    };
  }

  factory VpcArgs.fromMap(Map<String, dynamic> map) {
    return VpcArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipRange: (() {
        final guardedValue = map['ipRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
