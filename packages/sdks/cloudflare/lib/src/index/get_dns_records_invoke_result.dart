// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_records_comment.dart';
import 'get_dns_records_content.dart';
import 'get_dns_records_name.dart';
import 'get_dns_records_result.dart';
import 'get_dns_records_tag.dart';

/// Result data returned by getDnsRecords.
class GetDnsRecordsInvokeResult {
  final GetDnsRecordsComment? comment;
  final GetDnsRecordsContent? content;
  /// Direction to order DNS records in.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Whether to include shadow metadata in the `meta` field of each record in the response. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  final bool? includeShadowMetadata;
  /// Whether to match all search requirements or at least one (any). If set to `all`, acts like a logical AND between filters. If set to `any`, acts like a logical OR instead. Note that the interaction between tag filters is controlled by the `tag-match` parameter instead.
  /// Available values: "any", "all".
  final String? match;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  final GetDnsRecordsName? name;
  /// Field to order DNS records by.
  /// Available values: "type", "name", "content", "ttl", "proxied".
  final String? order;
  /// Whether the record is receiving the performance and security benefits of Cloudflare.
  final bool? proxied;
  /// The items returned by the data source
  final List<GetDnsRecordsResult>? results;
  /// Allows searching in multiple properties of a DNS record simultaneously. This parameter is intended for human users, not automation. Its exact behavior is intentionally left unspecified and is subject to change in the future. This parameter works independently of the `match` setting. For automated searches, please use the other available parameters.
  final String? search;
  /// Filters to records at or below the given NS delegation name, excluding the NS records that form the delegation itself. The value must be a subdomain of the zone; the zone apex is not accepted. Requires `include_shadow_metadata=true`. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  final String? shadowedByName;
  /// Returns NS records that shadow the given name, searching at the name itself and each of its ancestor names within the zone, excluding the zone apex. The value must be a subdomain of the zone; the zone apex is not accepted. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  final String? shadowingName;
  final GetDnsRecordsTag? tag;
  /// Whether to match all tag search requirements or at least one (any). If set to `all`, acts like a logical AND between tag filters. If set to `any`, acts like a logical OR instead. Note that the regular `match` parameter is still used to combine the resulting condition with other filters that aren't related to tags.
  /// Available values: "any", "all".
  final String? tagMatch;
  /// Record type.
  /// Available values: "A", "AAAA", "CAA", "CERT", "CNAME", "DNSKEY", "DS", "HTTPS", "LOC", "MX", "NAPTR", "NS", "OPENPGPKEY", "PTR", "SMIMEA", "SRV", "SSHFP", "SVCB", "TLSA", "TXT", "URI".
  final String? type;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetDnsRecordsInvokeResult].
  /// [comment] Optional.
  /// [content] Optional.
  /// [direction] Direction to order DNS records in.
  /// [includeShadowMetadata] Whether to include shadow metadata in the `meta` field of each record in the response. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  /// [match] Whether to match all search requirements or at least one (any). If set to `all`, acts like a logical AND between filters. If set to `any`, acts like a logical OR instead. Note that the interaction between tag filters is controlled by the `tag-match` parameter instead.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Optional.
  /// [order] Field to order DNS records by.
  /// [proxied] Whether the record is receiving the performance and security benefits of Cloudflare.
  /// [results] The items returned by the data source
  /// [search] Allows searching in multiple properties of a DNS record simultaneously. This parameter is intended for human users, not automation. Its exact behavior is intentionally left unspecified and is subject to change in the future. This parameter works independently of the `match` setting. For automated searches, please use the other available parameters.
  /// [shadowedByName] Filters to records at or below the given NS delegation name, excluding the NS records that form the delegation itself. The value must be a subdomain of the zone; the zone apex is not accepted. Requires `include_shadow_metadata=true`. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  /// [shadowingName] Returns NS records that shadow the given name, searching at the name itself and each of its ancestor names within the zone, excluding the zone apex. The value must be a subdomain of the zone; the zone apex is not accepted. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  /// [tag] Optional.
  /// [tagMatch] Whether to match all tag search requirements or at least one (any). If set to `all`, acts like a logical AND between tag filters. If set to `any`, acts like a logical OR instead. Note that the regular `match` parameter is still used to combine the resulting condition with other filters that aren't related to tags.
  /// [type] Record type.
  /// [zoneId] Identifier.
  const GetDnsRecordsInvokeResult({
    this.comment,
    this.content,
    this.direction,
    this.includeShadowMetadata,
    this.match,
    this.maxItems,
    this.name,
    this.order,
    this.proxied,
    this.results,
    this.search,
    this.shadowedByName,
    this.shadowingName,
    this.tag,
    this.tagMatch,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment?.toMap(),
      'content': ?content?.toMap(),
      'direction': ?direction,
      'includeShadowMetadata': ?includeShadowMetadata,
      'match': ?match,
      'maxItems': ?maxItems,
      'name': ?name?.toMap(),
      'order': ?order,
      'proxied': ?proxied,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDnsRecordsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
      'shadowedByName': ?shadowedByName,
      'shadowingName': ?shadowingName,
      'tag': ?tag?.toMap(),
      'tagMatch': ?tagMatch,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory GetDnsRecordsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetDnsRecordsInvokeResult(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return GetDnsRecordsComment.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return GetDnsRecordsContent.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeShadowMetadata: (() { final guardedValue = map['includeShadowMetadata']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return GetDnsRecordsName.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxied: (() { final guardedValue = map['proxied']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDnsRecordsResult>(guardedValue, (value) => GetDnsRecordsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shadowedByName: (() { final guardedValue = map['shadowedByName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shadowingName: (() { final guardedValue = map['shadowingName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return GetDnsRecordsTag.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tagMatch: (() { final guardedValue = map['tagMatch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
