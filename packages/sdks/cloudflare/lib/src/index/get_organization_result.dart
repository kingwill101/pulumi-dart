// ignore_for_file: unused_element, unnecessary_cast

import 'get_organization_filter.dart';
import 'get_organization_meta.dart';
import 'get_organization_parent.dart';
import 'get_organization_profile.dart';

/// Result data returned by getOrganization.
class GetOrganizationResult {
  final String? createTime;
  final GetOrganizationFilter? filter;
  /// The ID of this resource.
  final String? id;
  final GetOrganizationMeta? meta;
  final String? name;
  final String? organizationId;
  final GetOrganizationParent? parent;
  final GetOrganizationProfile? profile;

  /// Creates a new [GetOrganizationResult].
  /// [createTime] Optional.
  /// [filter] Optional.
  /// [id] The ID of this resource.
  /// [meta] Optional.
  /// [name] Optional.
  /// [organizationId] Optional.
  /// [parent] Optional.
  /// [profile] Optional.
  const GetOrganizationResult({
    this.createTime,
    this.filter,
    this.id,
    this.meta,
    this.name,
    this.organizationId,
    this.parent,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'meta': ?meta?.toMap(),
      'name': ?name,
      'organizationId': ?organizationId,
      'parent': ?parent?.toMap(),
      'profile': ?profile?.toMap(),
    };
  }

  factory GetOrganizationResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetOrganizationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return GetOrganizationMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return GetOrganizationParent.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return GetOrganizationProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
