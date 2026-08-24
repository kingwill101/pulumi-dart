// ignore_for_file: unused_element, unnecessary_cast

import 'get_share_resource_filter.dart';

/// Result data returned by getShareResource.
class GetShareResourceResult {
  /// Account identifier.
  final String? accountId;
  /// When the share was created.
  final String? created;
  final GetShareResourceFilter? filter;
  /// Share Resource identifier.
  final String? id;
  /// Resource Metadata.
  final String? meta;
  /// When the share was modified.
  final String? modified;
  /// Account identifier.
  final String? resourceAccountId;
  /// Share Resource identifier.
  final String? resourceId;
  /// Resource Type.
  /// Available values: "custom-ruleset", "gateway-policy", "gateway-destination-ip", "gateway-block-page-settings", "gateway-extended-email-matching", "idp-federation-grant".
  final String? resourceType;
  /// Resource Version.
  final int? resourceVersion;
  /// Share identifier tag.
  final String? shareId;
  /// Share Resource identifier.
  final String? shareResourceId;
  /// Resource Status.
  /// Available values: "active", "deleting", "deleted".
  final String? status;

  /// Creates a new [GetShareResourceResult].
  /// [accountId] Account identifier.
  /// [created] When the share was created.
  /// [filter] Optional.
  /// [id] Share Resource identifier.
  /// [meta] Resource Metadata.
  /// [modified] When the share was modified.
  /// [resourceAccountId] Account identifier.
  /// [resourceId] Share Resource identifier.
  /// [resourceType] Resource Type.
  /// [resourceVersion] Resource Version.
  /// [shareId] Share identifier tag.
  /// [shareResourceId] Share Resource identifier.
  /// [status] Resource Status.
  const GetShareResourceResult({
    this.accountId,
    this.created,
    this.filter,
    this.id,
    this.meta,
    this.modified,
    this.resourceAccountId,
    this.resourceId,
    this.resourceType,
    this.resourceVersion,
    this.shareId,
    this.shareResourceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'meta': ?meta,
      'modified': ?modified,
      'resourceAccountId': ?resourceAccountId,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'resourceVersion': ?resourceVersion,
      'shareId': ?shareId,
      'shareResourceId': ?shareResourceId,
      'status': ?status,
    };
  }

  factory GetShareResourceResult.fromMap(Map<String, dynamic> map) {
    return GetShareResourceResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetShareResourceFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceAccountId: (() { final guardedValue = map['resourceAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceVersion: (() { final guardedValue = map['resourceVersion']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareResourceId: (() { final guardedValue = map['shareResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
