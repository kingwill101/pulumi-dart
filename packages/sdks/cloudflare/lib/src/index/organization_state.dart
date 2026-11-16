// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_meta.dart';
import 'organization_parent.dart';
import 'organization_profile.dart';

/// Input properties used for looking up and filtering Organization resources.
class OrganizationState {
  final pulumi.Input<String?>? createTime;
  final pulumi.Input<OrganizationMeta?>? meta;
  /// The Organization name, limited to 65 UTF-8 bytes.
  final pulumi.Input<String?>? name;
  final pulumi.Input<OrganizationParent?>? parent;
  /// The current parent Organization ID. A different value is rejected; this endpoint cannot move an Organization.
  final pulumi.Input<String?>? parentId;
  /// Optional profile fields, each limited to 1,000 UTF-8 bytes. An empty profile is ignored.
  final pulumi.Input<OrganizationProfile?>? profile;

  /// Creates a new [OrganizationState].
  /// [createTime] Optional.
  /// [meta] Optional.
  /// [name] The Organization name, limited to 65 UTF-8 bytes.
  /// [parent] Optional.
  /// [parentId] The current parent Organization ID. A different value is rejected; this endpoint cannot move an Organization.
  /// [profile] Optional profile fields, each limited to 1,000 UTF-8 bytes. An empty profile is ignored.
  const OrganizationState({
    this.createTime,
    this.meta,
    this.name,
    this.parent,
    this.parentId,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'meta': ?pulumi.Input.mapOptionalInputValue<OrganizationMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': ?name,
      'parent': ?pulumi.Input.mapOptionalInputValue<OrganizationParent, Map<String, dynamic>>(parent, (value) => value.toMap()),
      'parentId': ?parentId,
      'profile': ?pulumi.Input.mapOptionalInputValue<OrganizationProfile, Map<String, dynamic>>(profile, (value) => value.toMap()),
    };
  }

  factory OrganizationState.fromMap(Map<String, dynamic> map) {
    return OrganizationState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationParent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
