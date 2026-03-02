// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a sub PublicDelegatedPrefix.
class PublicDelegatedPrefixPublicDelegatedSubPrefixComputeV1 {
  /// Name of the project scoping this PublicDelegatedSubPrefix.
  final pulumi.Input<String>? delegateeProject;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The IP address range, in CIDR format, represented by this sub public delegated prefix.
  final pulumi.Input<String>? ipCidrRange;
  /// Whether the sub prefix is delegated to create Address resources in the delegatee project.
  final pulumi.Input<bool>? isAddress;
  /// The name of the sub public delegated prefix.
  final pulumi.Input<String>? name;

  /// Creates a new [PublicDelegatedPrefixPublicDelegatedSubPrefixComputeV1].
  /// [delegateeProject] Name of the project scoping this PublicDelegatedSubPrefix.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this sub public delegated prefix.
  /// [isAddress] Whether the sub prefix is delegated to create Address resources in the delegatee project.
  /// [name] The name of the sub public delegated prefix.
  PublicDelegatedPrefixPublicDelegatedSubPrefixComputeV1({
    this.delegateeProject,
    this.description,
    this.ipCidrRange,
    this.isAddress,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegateeProject': ?delegateeProject,
      'description': ?description,
      'ipCidrRange': ?ipCidrRange,
      'isAddress': ?isAddress,
      'name': ?name,
    };
  }

  factory PublicDelegatedPrefixPublicDelegatedSubPrefixComputeV1.fromMap(Map<String, dynamic> map) {
    return PublicDelegatedPrefixPublicDelegatedSubPrefixComputeV1(
      delegateeProject: map['delegateeProject'] == null ? null : (map['delegateeProject']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ipCidrRange: map['ipCidrRange'] == null ? null : (map['ipCidrRange']! as String).input(),
      isAddress: map['isAddress'] == null ? null : (map['isAddress']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

