// ignore_for_file: unused_element, unnecessary_cast

import 'get_dns_record_data.dart';
import 'get_dns_record_filter.dart';
import 'get_dns_record_meta.dart';
import 'get_dns_record_settings.dart';

/// Result data returned by getDnsRecord.
class GetDnsRecordResult {
  /// Comments or notes about the DNS record. This field has no effect on DNS responses.
  final String? comment;
  /// When the record comment was last modified. Omitted if there is no comment.
  final String? commentModifiedOn;
  /// A valid IPv4 address.
  final String? content;
  final String? createdOn;
  final GetDnsRecordData? data;
  /// Identifier.
  final String? dnsRecordId;
  final GetDnsRecordFilter? filter;
  final String? id;
  /// Whether to include shadow metadata in the `meta` field of each record in the response. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  final bool? includeShadowMetadata;
  final GetDnsRecordMeta? meta;
  final String? modifiedOn;
  final String? name;
  final double? priority;
  final bool? privateRouting;
  final bool? proxiable;
  final bool? proxied;
  final GetDnsRecordSettings? settings;
  final List<String>? tags;
  final String? tagsModifiedOn;
  final double? ttl;
  final String? type;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetDnsRecordResult].
  /// [comment] Comments or notes about the DNS record. This field has no effect on DNS responses.
  /// [commentModifiedOn] When the record comment was last modified. Omitted if there is no comment.
  /// [content] A valid IPv4 address.
  /// [createdOn] Optional.
  /// [data] Optional.
  /// [dnsRecordId] Identifier.
  /// [filter] Optional.
  /// [id] Optional.
  /// [includeShadowMetadata] Whether to include shadow metadata in the `meta` field of each record in the response. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  /// [meta] Optional.
  /// [modifiedOn] Optional.
  /// [name] Optional.
  /// [priority] Optional.
  /// [privateRouting] Optional.
  /// [proxiable] Optional.
  /// [proxied] Optional.
  /// [settings] Optional.
  /// [tags] Optional.
  /// [tagsModifiedOn] Optional.
  /// [ttl] Optional.
  /// [type] Optional.
  /// [zoneId] Identifier.
  const GetDnsRecordResult({
    this.comment,
    this.commentModifiedOn,
    this.content,
    this.createdOn,
    this.data,
    this.dnsRecordId,
    this.filter,
    this.id,
    this.includeShadowMetadata,
    this.meta,
    this.modifiedOn,
    this.name,
    this.priority,
    this.privateRouting,
    this.proxiable,
    this.proxied,
    this.settings,
    this.tags,
    this.tagsModifiedOn,
    this.ttl,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'commentModifiedOn': ?commentModifiedOn,
      'content': ?content,
      'createdOn': ?createdOn,
      'data': ?data?.toMap(),
      'dnsRecordId': ?dnsRecordId,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'includeShadowMetadata': ?includeShadowMetadata,
      'meta': ?meta?.toMap(),
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'priority': ?priority,
      'privateRouting': ?privateRouting,
      'proxiable': ?proxiable,
      'proxied': ?proxied,
      'settings': ?settings?.toMap(),
      'tags': ?tags,
      'tagsModifiedOn': ?tagsModifiedOn,
      'ttl': ?ttl,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory GetDnsRecordResult.fromMap(Map<String, dynamic> map) {
    return GetDnsRecordResult(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      commentModifiedOn: (() { final guardedValue = map['commentModifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return GetDnsRecordData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dnsRecordId: (() { final guardedValue = map['dnsRecordId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetDnsRecordFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeShadowMetadata: (() { final guardedValue = map['includeShadowMetadata']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return GetDnsRecordMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      privateRouting: (() { final guardedValue = map['privateRouting']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      proxiable: (() { final guardedValue = map['proxiable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      proxied: (() { final guardedValue = map['proxied']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return GetDnsRecordSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tagsModifiedOn: (() { final guardedValue = map['tagsModifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
