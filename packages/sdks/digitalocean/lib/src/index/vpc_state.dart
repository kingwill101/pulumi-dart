// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Vpc resources.
class VpcState {
  /// The date and time of when the VPC was created.
  final pulumi.Input<String>? createdAt;

  /// A boolean indicating whether or not the VPC is the default one for the region.
  final pulumi.Input<bool>? default_;

  /// A free-form text field up to a limit of 255 characters to describe the VPC.
  final pulumi.Input<String>? description;

  /// The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than `/16` or smaller than `/24`.
  final pulumi.Input<String>? ipRange;

  /// A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only.
  final pulumi.Input<String>? name;

  /// The DigitalOcean region slug for the VPC's location.
  final pulumi.Input<String>? region;

  /// The uniform resource name (URN) for the VPC.
  final pulumi.Input<String>? vpcUrn;

  /// Creates a new [VpcState].
  /// [createdAt] The date and time of when the VPC was created.
  /// [default_] A boolean indicating whether or not the VPC is the default one for the region.
  /// [description] A free-form text field up to a limit of 255 characters to describe the VPC.
  /// [ipRange] The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than `/16` or smaller than `/24`.
  /// [name] A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only.
  /// [region] The DigitalOcean region slug for the VPC's location.
  /// [vpcUrn] The uniform resource name (URN) for the VPC.
  VpcState({
    this.createdAt,
    this.default_,
    this.description,
    this.ipRange,
    this.name,
    this.region,
    this.vpcUrn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'default': ?default_,
      'description': ?description,
      'ipRange': ?ipRange,
      'name': ?name,
      'region': ?region,
      'vpcUrn': ?vpcUrn,
    };
  }

  factory VpcState.fromMap(Map<String, dynamic> map) {
    return VpcState(
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      default_: (() {
        final guardedValue = map['default'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
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
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcUrn: (() {
        final guardedValue = map['vpcUrn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
