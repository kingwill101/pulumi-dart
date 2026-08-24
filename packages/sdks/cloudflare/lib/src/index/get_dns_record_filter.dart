// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_record_filter_comment.dart';
import 'get_dns_record_filter_content.dart';
import 'get_dns_record_filter_name.dart';
import 'get_dns_record_filter_tag.dart';

class GetDnsRecordFilter {
  final pulumi.Input<GetDnsRecordFilterComment?>? comment;
  final pulumi.Input<GetDnsRecordFilterContent?>? content;
  /// Direction to order DNS records in.
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Whether to match all search requirements or at least one (any). If set to `all`, acts like a logical AND between filters. If set to `any`, acts like a logical OR instead. Note that the interaction between tag filters is controlled by the `tag-match` parameter instead.
  /// Available values: "any", "all".
  final pulumi.Input<String> match;
  final pulumi.Input<GetDnsRecordFilterName?>? name;
  /// Field to order DNS records by.
  /// Available values: "type", "name", "content", "ttl", "proxied".
  final pulumi.Input<String> order;
  /// Whether the record is receiving the performance and security benefits of Cloudflare.
  final pulumi.Input<bool> proxied;
  /// Allows searching in multiple properties of a DNS record simultaneously. This parameter is intended for human users, not automation. Its exact behavior is intentionally left unspecified and is subject to change in the future. This parameter works independently of the `match` setting. For automated searches, please use the other available parameters.
  final pulumi.Input<String?>? search;
  /// Filters to records at or below the given NS delegation name, excluding the NS records that form the delegation itself. The value must be a subdomain of the zone; the zone apex is not accepted. Requires `include_shadow_metadata=true`. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  final pulumi.Input<String?>? shadowedByName;
  /// Returns NS records that shadow the given name, searching at the name itself and each of its ancestor names within the zone, excluding the zone apex. The value must be a subdomain of the zone; the zone apex is not accepted. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  final pulumi.Input<String?>? shadowingName;
  final pulumi.Input<GetDnsRecordFilterTag?>? tag;
  /// Whether to match all tag search requirements or at least one (any). If set to `all`, acts like a logical AND between tag filters. If set to `any`, acts like a logical OR instead. Note that the regular `match` parameter is still used to combine the resulting condition with other filters that aren't related to tags.
  /// Available values: "any", "all".
  final pulumi.Input<String> tagMatch;
  /// Record type.
  /// Available values: "A", "AAAA", "CAA", "CERT", "CNAME", "DNSKEY", "DS", "HTTPS", "LOC", "MX", "NAPTR", "NS", "OPENPGPKEY", "PTR", "SMIMEA", "SRV", "SSHFP", "SVCB", "TLSA", "TXT", "URI".
  final pulumi.Input<String?>? type;

  /// Creates a new [GetDnsRecordFilter].
  /// [comment] Optional.
  /// [content] Optional.
  /// [direction] Direction to order DNS records in.
  /// [match] Whether to match all search requirements or at least one (any). If set to `all`, acts like a logical AND between filters. If set to `any`, acts like a logical OR instead. Note that the interaction between tag filters is controlled by the `tag-match` parameter instead.
  /// [name] Optional.
  /// [order] Field to order DNS records by.
  /// [proxied] Whether the record is receiving the performance and security benefits of Cloudflare.
  /// [search] Allows searching in multiple properties of a DNS record simultaneously. This parameter is intended for human users, not automation. Its exact behavior is intentionally left unspecified and is subject to change in the future. This parameter works independently of the `match` setting. For automated searches, please use the other available parameters.
  /// [shadowedByName] Filters to records at or below the given NS delegation name, excluding the NS records that form the delegation itself. The value must be a subdomain of the zone; the zone apex is not accepted. Requires `include_shadow_metadata=true`. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  /// [shadowingName] Returns NS records that shadow the given name, searching at the name itself and each of its ancestor names within the zone, excluding the zone apex. The value must be a subdomain of the zone; the zone apex is not accepted. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  /// [tag] Optional.
  /// [tagMatch] Whether to match all tag search requirements or at least one (any). If set to `all`, acts like a logical AND between tag filters. If set to `any`, acts like a logical OR instead. Note that the regular `match` parameter is still used to combine the resulting condition with other filters that aren't related to tags.
  /// [type] Record type.
  const GetDnsRecordFilter({
    this.comment,
    this.content,
    required this.direction,
    required this.match,
    this.name,
    required this.order,
    required this.proxied,
    this.search,
    this.shadowedByName,
    this.shadowingName,
    this.tag,
    required this.tagMatch,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?pulumi.Input.mapOptionalInputValue<GetDnsRecordFilterComment, Map<String, dynamic>>(comment, (value) => value.toMap()),
      'content': ?pulumi.Input.mapOptionalInputValue<GetDnsRecordFilterContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'direction': direction,
      'match': match,
      'name': ?pulumi.Input.mapOptionalInputValue<GetDnsRecordFilterName, Map<String, dynamic>>(name, (value) => value.toMap()),
      'order': order,
      'proxied': proxied,
      'search': ?search,
      'shadowedByName': ?shadowedByName,
      'shadowingName': ?shadowingName,
      'tag': ?pulumi.Input.mapOptionalInputValue<GetDnsRecordFilterTag, Map<String, dynamic>>(tag, (value) => value.toMap()),
      'tagMatch': tagMatch,
      'type': ?type,
    };
  }

  factory GetDnsRecordFilter.fromMap(Map<String, dynamic> map) {
    return GetDnsRecordFilter(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetDnsRecordFilterComment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetDnsRecordFilterContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      match: pulumi.Input.fromValue(map['match'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetDnsRecordFilterName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      order: pulumi.Input.fromValue(map['order'] as String),
      proxied: pulumi.Input.fromValue(map['proxied'] as bool),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shadowedByName: (() { final guardedValue = map['shadowedByName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shadowingName: (() { final guardedValue = map['shadowingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetDnsRecordFilterTag.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagMatch: pulumi.Input.fromValue(map['tagMatch'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
