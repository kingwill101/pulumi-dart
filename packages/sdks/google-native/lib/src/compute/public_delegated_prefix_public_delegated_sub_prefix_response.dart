// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a sub PublicDelegatedPrefix.
class PublicDelegatedPrefixPublicDelegatedSubPrefixResponse {
  /// The allocatable prefix length supported by this PublicDelegatedSubPrefix.
  final pulumi.Input<int> allocatablePrefixLength;
  /// Name of the project scoping this PublicDelegatedSubPrefix.
  final pulumi.Input<String> delegateeProject;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String> description;
  /// The IP address range, in CIDR format, represented by this sub public delegated prefix.
  final pulumi.Input<String> ipCidrRange;
  /// Whether the sub prefix is delegated to create Address resources in the delegatee project.
  final pulumi.Input<bool> isAddress;
  /// The PublicDelegatedSubPrefix mode for IPv6 only.
  final pulumi.Input<String> mode;
  /// The name of the sub public delegated prefix.
  final pulumi.Input<String> name;
  /// The region of the sub public delegated prefix if it is regional. If absent, the sub prefix is global.
  final pulumi.Input<String> region;
  /// The status of the sub public delegated prefix.
  final pulumi.Input<String> status;

  /// Creates a new [PublicDelegatedPrefixPublicDelegatedSubPrefixResponse].
  /// [allocatablePrefixLength] The allocatable prefix length supported by this PublicDelegatedSubPrefix.
  /// [delegateeProject] Name of the project scoping this PublicDelegatedSubPrefix.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this sub public delegated prefix.
  /// [isAddress] Whether the sub prefix is delegated to create Address resources in the delegatee project.
  /// [mode] The PublicDelegatedSubPrefix mode for IPv6 only.
  /// [name] The name of the sub public delegated prefix.
  /// [region] The region of the sub public delegated prefix if it is regional. If absent, the sub prefix is global.
  /// [status] The status of the sub public delegated prefix.
  PublicDelegatedPrefixPublicDelegatedSubPrefixResponse({
    required this.allocatablePrefixLength,
    required this.delegateeProject,
    required this.description,
    required this.ipCidrRange,
    required this.isAddress,
    required this.mode,
    required this.name,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatablePrefixLength': allocatablePrefixLength,
      'delegateeProject': delegateeProject,
      'description': description,
      'ipCidrRange': ipCidrRange,
      'isAddress': isAddress,
      'mode': mode,
      'name': name,
      'region': region,
      'status': status,
    };
  }

  factory PublicDelegatedPrefixPublicDelegatedSubPrefixResponse.fromMap(Map<String, dynamic> map) {
    return PublicDelegatedPrefixPublicDelegatedSubPrefixResponse(
      allocatablePrefixLength: (map['allocatablePrefixLength'] as int).input(),
      delegateeProject: (map['delegateeProject'] as String).input(),
      description: (map['description'] as String).input(),
      ipCidrRange: (map['ipCidrRange'] as String).input(),
      isAddress: (map['isAddress'] as bool).input(),
      mode: (map['mode'] as String).input(),
      name: (map['name'] as String).input(),
      region: (map['region'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

