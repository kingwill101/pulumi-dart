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
  /// When the record was created.
  final String? createdOn;
  /// Components of a MX record.
  final GetDnsRecordData? data;
  /// Identifier.
  final String? dnsRecordId;
  final GetDnsRecordFilter? filter;
  /// Identifier.
  final String? id;
  /// Whether to include shadow metadata in the `meta` field of each record in the response. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  final bool? includeShadowMetadata;
  /// Extra Cloudflare-specific metadata about the record.
  final GetDnsRecordMeta? meta;
  /// When the record was last modified.
  final String? modifiedOn;
  /// Complete DNS record name, including the zone name, in Punycode.
  final String? name;
  /// Required for MX and URI records; ignored for other record types (but may still be returned by the API). Records with lower priorities are preferred. This field is to be deprecated in favor of the priority field within the data map.
  final double? priority;
  /// Enables private network routing to the origin.
  final bool? privateRouting;
  /// Whether the record can be proxied by Cloudflare or not.
  final bool? proxiable;
  /// Whether the record is receiving the performance and security benefits of Cloudflare.
  final bool? proxied;
  /// Settings for the DNS record.
  final GetDnsRecordSettings? settings;
  /// Custom tags for the DNS record. This field has no effect on DNS responses.
  final List<String>? tags;
  /// When the record tags were last modified. Omitted if there are no tags.
  final String? tagsModifiedOn;
  /// Time To Live (TTL) of the DNS record in seconds. Setting to 1 means 'automatic'. Value must be between 60 and 86400, with the minimum reduced to 30 for Enterprise zones.
  final double? ttl;
  /// Record type.
  /// Available values: "A", "AAAA", "CNAME", "MX", "NS", "OPENPGPKEY", "PTR", "TXT", "CAA", "CERT", "DNSKEY", "DS", "HTTPS", "LOC", "NAPTR", "SMIMEA", "SRV", "SSHFP", "SVCB", "TLSA", "URI".
  final String? type;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetDnsRecordResult].
  /// [comment] Comments or notes about the DNS record. This field has no effect on DNS responses.
  /// [commentModifiedOn] When the record comment was last modified. Omitted if there is no comment.
  /// [content] A valid IPv4 address.
  /// [createdOn] When the record was created.
  /// [data] Components of a MX record.
  /// [dnsRecordId] Identifier.
  /// [filter] Optional.
  /// [id] Identifier.
  /// [includeShadowMetadata] Whether to include shadow metadata in the `meta` field of each record in the response. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  /// [meta] Extra Cloudflare-specific metadata about the record.
  /// [modifiedOn] When the record was last modified.
  /// [name] Complete DNS record name, including the zone name, in Punycode.
  /// [priority] Required for MX and URI records; ignored for other record types (but may still be returned by the API). Records with lower priorities are preferred. This field is to be deprecated in favor of the priority field within the data map.
  /// [privateRouting] Enables private network routing to the origin.
  /// [proxiable] Whether the record can be proxied by Cloudflare or not.
  /// [proxied] Whether the record is receiving the performance and security benefits of Cloudflare.
  /// [settings] Settings for the DNS record.
  /// [tags] Custom tags for the DNS record. This field has no effect on DNS responses.
  /// [tagsModifiedOn] When the record tags were last modified. Omitted if there are no tags.
  /// [ttl] Time To Live (TTL) of the DNS record in seconds. Setting to 1 means 'automatic'. Value must be between 60 and 86400, with the minimum reduced to 30 for Enterprise zones.
  /// [type] Record type.
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
