// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_delegated_prefix_public_delegated_sub_prefix_mode.dart';

/// Represents a sub PublicDelegatedPrefix.
class PublicDelegatedPrefixPublicDelegatedSubPrefix {
  /// The allocatable prefix length supported by this PublicDelegatedSubPrefix.
  final pulumi.Input<int>? allocatablePrefixLength;
  /// Name of the project scoping this PublicDelegatedSubPrefix.
  final pulumi.Input<String>? delegateeProject;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The IP address range, in CIDR format, represented by this sub public delegated prefix.
  final pulumi.Input<String>? ipCidrRange;
  /// Whether the sub prefix is delegated to create Address resources in the delegatee project.
  final pulumi.Input<bool>? isAddress;
  /// The PublicDelegatedSubPrefix mode for IPv6 only.
  final pulumi.Input<PublicDelegatedPrefixPublicDelegatedSubPrefixMode>? mode;
  /// The name of the sub public delegated prefix.
  final pulumi.Input<String>? name;

  /// Creates a new [PublicDelegatedPrefixPublicDelegatedSubPrefix].
  /// [allocatablePrefixLength] The allocatable prefix length supported by this PublicDelegatedSubPrefix.
  /// [delegateeProject] Name of the project scoping this PublicDelegatedSubPrefix.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this sub public delegated prefix.
  /// [isAddress] Whether the sub prefix is delegated to create Address resources in the delegatee project.
  /// [mode] The PublicDelegatedSubPrefix mode for IPv6 only.
  /// [name] The name of the sub public delegated prefix.
  PublicDelegatedPrefixPublicDelegatedSubPrefix({
    this.allocatablePrefixLength,
    this.delegateeProject,
    this.description,
    this.ipCidrRange,
    this.isAddress,
    this.mode,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatablePrefixLength': ?allocatablePrefixLength,
      'delegateeProject': ?delegateeProject,
      'description': ?description,
      'ipCidrRange': ?ipCidrRange,
      'isAddress': ?isAddress,
      'mode': ?pulumi.Input.mapOptionalInputValue<PublicDelegatedPrefixPublicDelegatedSubPrefixMode, String>(mode, (value) => value.value),
      'name': ?name,
    };
  }

  factory PublicDelegatedPrefixPublicDelegatedSubPrefix.fromMap(Map<String, dynamic> map) {
    return PublicDelegatedPrefixPublicDelegatedSubPrefix(
      allocatablePrefixLength: map['allocatablePrefixLength'] == null ? null : (map['allocatablePrefixLength'] as int).input(),
      delegateeProject: map['delegateeProject'] == null ? null : (map['delegateeProject'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ipCidrRange: map['ipCidrRange'] == null ? null : (map['ipCidrRange'] as String).input(),
      isAddress: map['isAddress'] == null ? null : (map['isAddress'] as bool).input(),
      mode: map['mode'] == null ? null : (PublicDelegatedPrefixPublicDelegatedSubPrefixMode.fromValue(map['mode'] as String)).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

