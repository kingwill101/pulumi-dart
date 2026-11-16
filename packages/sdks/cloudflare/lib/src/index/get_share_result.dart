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
  /// When the object was created.
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
  /// Include share tags in the response. `api` reads tags from the tag service; `mirror` reads a local, eventually consistent replica. If the tag lookup fails, the response omits `tags`.
  /// Available values: "api", "mirror".
  final String? includeTagsFrom;
  /// Available values: "sent", "received".
  final String? kind;
  /// When the object was last modified.
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
  /// Tags associated with the share. Included in create and update responses when tags are supplied, and in read responses when the `includeTagsFrom` parameter is set.
  final Map<String, String>? tags;
  /// Available values: "account", "organization".
  final String? targetType;

  /// Creates a new [GetShareResult].
  /// [accountId] Account identifier.
  /// [accountName] The display name of an account.
  /// [associatedRecipientCount] The number of recipients in the 'associated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [associatingRecipientCount] The number of recipients in the 'associating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [created] When the object was created.
  /// [disassociatedRecipientCount] The number of recipients in the 'disassociated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [disassociatingRecipientCount] The number of recipients in the 'disassociating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [filter] Optional.
  /// [id] Share identifier tag.
  /// [includeRecipientCounts] Include recipient counts in the response.
  /// [includeResources] Include resources in the response.
  /// [includeTagsFrom] Include share tags in the response. `api` reads tags from the tag service; `mirror` reads a local, eventually consistent replica. If the tag lookup fails, the response omits `tags`.
  /// [kind] Available values: "sent", "received".
  /// [modified] When the object was last modified.
  /// [name] The name of the share.
  /// [organizationId] Organization identifier.
  /// [resources] A list of resources that are part of the share. This field is only included when requested via the 'include_resources' parameter.
  /// [shareId] Share identifier tag.
  /// [status] Available values: "active", "deleting", "deleted".
  /// [tags] Tags associated with the share. Included in create and update responses when tags are supplied, and in read responses when the `includeTagsFrom` parameter is set.
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
    this.includeTagsFrom,
    this.kind,
    this.modified,
    this.name,
    this.organizationId,
    this.resources,
    this.shareId,
    this.status,
    this.tags,
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
      'includeTagsFrom': ?includeTagsFrom,
      'kind': ?kind,
      'modified': ?modified,
      'name': ?name,
      'organizationId': ?organizationId,
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetShareResource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'shareId': ?shareId,
      'status': ?status,
      'tags': ?tags,
      'targetType': ?targetType,
    };
  }

  factory GetShareResult.fromMap(Map<String, dynamic> map) {
    return GetShareResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associatedRecipientCount: (() { final guardedValue = map['associatedRecipientCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      associatingRecipientCount: (() { final guardedValue = map['associatingRecipientCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disassociatedRecipientCount: (() { final guardedValue = map['disassociatedRecipientCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      disassociatingRecipientCount: (() { final guardedValue = map['disassociatingRecipientCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetShareFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeRecipientCounts: (() { final guardedValue = map['includeRecipientCounts']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeTagsFrom: (() { final guardedValue = map['includeTagsFrom']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetShareResource>(guardedValue, (value) => GetShareResource.fromMap((value as Map).cast<String, dynamic>())); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
