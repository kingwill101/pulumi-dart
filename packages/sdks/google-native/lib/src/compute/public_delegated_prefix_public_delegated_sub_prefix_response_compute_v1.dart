// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a sub PublicDelegatedPrefix.
class PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1 {
  /// Name of the project scoping this PublicDelegatedSubPrefix.
  final pulumi.Input<String> delegateeProject;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String> description;
  /// The IP address range, in CIDR format, represented by this sub public delegated prefix.
  final pulumi.Input<String> ipCidrRange;
  /// Whether the sub prefix is delegated to create Address resources in the delegatee project.
  final pulumi.Input<bool> isAddress;
  /// The name of the sub public delegated prefix.
  final pulumi.Input<String> name;
  /// The region of the sub public delegated prefix if it is regional. If absent, the sub prefix is global.
  final pulumi.Input<String> region;
  /// The status of the sub public delegated prefix.
  final pulumi.Input<String> status;

  /// Creates a new [PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1].
  /// [delegateeProject] Name of the project scoping this PublicDelegatedSubPrefix.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this sub public delegated prefix.
  /// [isAddress] Whether the sub prefix is delegated to create Address resources in the delegatee project.
  /// [name] The name of the sub public delegated prefix.
  /// [region] The region of the sub public delegated prefix if it is regional. If absent, the sub prefix is global.
  /// [status] The status of the sub public delegated prefix.
  const PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1({
    required this.delegateeProject,
    required this.description,
    required this.ipCidrRange,
    required this.isAddress,
    required this.name,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegateeProject': delegateeProject,
      'description': description,
      'ipCidrRange': ipCidrRange,
      'isAddress': isAddress,
      'name': name,
      'region': region,
      'status': status,
    };
  }

  factory PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1(
      delegateeProject: pulumi.Input.fromValue(map['delegateeProject'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      ipCidrRange: pulumi.Input.fromValue(map['ipCidrRange'] as String),
      isAddress: pulumi.Input.fromValue(map['isAddress'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
