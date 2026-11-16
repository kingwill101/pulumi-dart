// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_parent.dart';
import 'organization_profile.dart';

/// {@template pulumi_index_organization_organization_args_doc}
/// The set of arguments for Organization.
/// {@endtemplate}
/// {@macro pulumi_index_organization_organization_args_doc}
class OrganizationArgs {
  /// The Organization name, limited to 65 UTF-8 bytes.
  final pulumi.Input<String> name;
  final pulumi.Input<OrganizationParent?>? parent;
  /// The current parent Organization ID. A different value is rejected; this endpoint cannot move an Organization.
  final pulumi.Input<String?>? parentId;
  /// Optional profile fields, each limited to 1,000 UTF-8 bytes. An empty profile is ignored.
  final pulumi.Input<OrganizationProfile?>? profile;

  /// Creates a new [OrganizationArgs].
  /// [name] The Organization name, limited to 65 UTF-8 bytes.
  /// [parent] Optional.
  /// [parentId] The current parent Organization ID. A different value is rejected; this endpoint cannot move an Organization.
  /// [profile] Optional profile fields, each limited to 1,000 UTF-8 bytes. An empty profile is ignored.
  const OrganizationArgs({
    required this.name,
    this.parent,
    this.parentId,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parent': ?pulumi.Input.mapOptionalInputValue<OrganizationParent, Map<String, dynamic>>(parent, (value) => value.toMap()),
      'parentId': ?parentId,
      'profile': ?pulumi.Input.mapOptionalInputValue<OrganizationProfile, Map<String, dynamic>>(profile, (value) => value.toMap()),
    };
  }

  factory OrganizationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationParent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
