// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_filter.dart';
import 'get_share_resource.dart';

/// Result data returned by getShare.
class GetShareResult {
  /// Account identifier.
  final String? accountId;
  /// The display name of an account.
  final String? accountName;
  /// The number of recipients in the 'associated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final int? associatedRecipientCount;
  /// The number of recipients in the 'associating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final int? associatingRecipientCount;
  /// When the share was created.
  final String? created;
  /// The number of recipients in the 'disassociated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final int? disassociatedRecipientCount;
  /// The number of recipients in the 'disassociating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final int? disassociatingRecipientCount;
  final GetShareFilter? filter;
  /// Share identifier tag.
  final String? id;
  /// Include recipient counts in the response.
  final bool? includeRecipientCounts;
  /// Include resources in the response.
  final bool? includeResources;
  /// Available values: "sent", "received".
  final String? kind;
  /// When the share was modified.
  final String? modified;
  /// The name of the share.
  final String? name;
  /// Organization identifier.
  final String? organizationId;
  /// A list of resources that are part of the share. This field is only included when requested via the 'include_resources' parameter.
  final List<GetShareResource>? resources;
  /// Share identifier tag.
  final String? shareId;
  /// Available values: "active", "deleting", "deleted".
  final String? status;
  /// Available values: "account", "organization".
  final String? targetType;

  /// Creates a new [GetShareResult].
  /// [accountId] Account identifier.
  /// [accountName] The display name of an account.
  /// [associatedRecipientCount] The number of recipients in the 'associated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [associatingRecipientCount] The number of recipients in the 'associating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [created] When the share was created.
  /// [disassociatedRecipientCount] The number of recipients in the 'disassociated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [disassociatingRecipientCount] The number of recipients in the 'disassociating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [filter] Optional.
  /// [id] Share identifier tag.
  /// [includeRecipientCounts] Include recipient counts in the response.
  /// [includeResources] Include resources in the response.
  /// [kind] Available values: "sent", "received".
  /// [modified] When the share was modified.
  /// [name] The name of the share.
  /// [organizationId] Organization identifier.
  /// [resources] A list of resources that are part of the share. This field is only included when requested via the 'include_resources' parameter.
  /// [shareId] Share identifier tag.
  /// [status] Available values: "active", "deleting", "deleted".
  /// [targetType] Available values: "account", "organization".
  const GetShareResult({
    this.accountId,
    this.accountName,
    this.associatedRecipientCount,
    this.associatingRecipientCount,
    this.created,
    this.disassociatedRecipientCount,
    this.disassociatingRecipientCount,
    this.filter,
    this.id,
    this.includeRecipientCounts,
    this.includeResources,
    this.kind,
    this.modified,
    this.name,
    this.organizationId,
    this.resources,
    this.shareId,
    this.status,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': ?accountName,
      'associatedRecipientCount': ?associatedRecipientCount,
      'associatingRecipientCount': ?associatingRecipientCount,
      'created': ?created,
      'disassociatedRecipientCount': ?disassociatedRecipientCount,
      'disassociatingRecipientCount': ?disassociatingRecipientCount,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'includeRecipientCounts': ?includeRecipientCounts,
      'includeResources': ?includeResources,
      'kind': ?kind,
      'modified': ?modified,
      'name': ?name,
      'organizationId': ?organizationId,
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetShareResource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'shareId': ?shareId,
      'status': ?status,
      'targetType': ?targetType,
    };
  }

  factory GetShareResult.fromMap(Map<String, dynamic> map) {
    return GetShareResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associatedRecipientCount: (() { final guardedValue = map['associatedRecipientCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      associatingRecipientCount: (() { final guardedValue = map['associatingRecipientCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disassociatedRecipientCount: (() { final guardedValue = map['disassociatedRecipientCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      disassociatingRecipientCount: (() { final guardedValue = map['disassociatingRecipientCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetShareFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeRecipientCounts: (() { final guardedValue = map['includeRecipientCounts']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetShareResource>(guardedValue, (value) => GetShareResource.fromMap((value as Map).cast<String, dynamic>())); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
