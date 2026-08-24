// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_meta.dart';
import 'organization_parent.dart';
import 'organization_profile.dart';

/// Input properties used for looking up and filtering Organization resources.
class OrganizationState {
  final pulumi.Input<String?>? createTime;
  final pulumi.Input<OrganizationMeta?>? meta;
  final pulumi.Input<String?>? name;
  final pulumi.Input<OrganizationParent?>? parent;
  final pulumi.Input<OrganizationProfile?>? profile;

  /// Creates a new [OrganizationState].
  /// [createTime] Optional.
  /// [meta] Optional.
  /// [name] Optional.
  /// [parent] Optional.
  /// [profile] Optional.
  const OrganizationState({
    this.createTime,
    this.meta,
    this.name,
    this.parent,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'meta': ?pulumi.Input.mapOptionalInputValue<OrganizationMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': ?name,
      'parent': ?pulumi.Input.mapOptionalInputValue<OrganizationParent, Map<String, dynamic>>(parent, (value) => value.toMap()),
      'profile': ?pulumi.Input.mapOptionalInputValue<OrganizationProfile, Map<String, dynamic>>(profile, (value) => value.toMap()),
    };
  }

  factory OrganizationState.fromMap(Map<String, dynamic> map) {
    return OrganizationState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationParent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
