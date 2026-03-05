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
      allocatablePrefixLength: pulumi.Input.fromValue(map['allocatablePrefixLength'] as int),
      delegateeProject: pulumi.Input.fromValue(map['delegateeProject'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      ipCidrRange: pulumi.Input.fromValue(map['ipCidrRange'] as String),
      isAddress: pulumi.Input.fromValue(map['isAddress'] as bool),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

