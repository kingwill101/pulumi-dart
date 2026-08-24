// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_parent.dart';
import 'organization_profile.dart';

/// {@template pulumi_index_organization_organization_args_doc}
/// The set of arguments for Organization.
/// {@endtemplate}
/// {@macro pulumi_index_organization_organization_args_doc}
class OrganizationArgs {
  final pulumi.Input<String> name;
  final pulumi.Input<OrganizationParent?>? parent;
  final pulumi.Input<OrganizationProfile?>? profile;

  /// Creates a new [OrganizationArgs].
  /// [name] Required.
  /// [parent] Optional.
  /// [profile] Optional.
  const OrganizationArgs({
    required this.name,
    this.parent,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parent': ?pulumi.Input.mapOptionalInputValue<OrganizationParent, Map<String, dynamic>>(parent, (value) => value.toMap()),
      'profile': ?pulumi.Input.mapOptionalInputValue<OrganizationProfile, Map<String, dynamic>>(profile, (value) => value.toMap()),
    };
  }

  factory OrganizationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationParent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
