// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_records_result_data.dart';
import 'get_dns_records_result_settings.dart';

class GetDnsRecordsResult {
  /// Comments or notes about the DNS record. This field has no effect on DNS responses.
  final pulumi.Input<String> comment;
  /// When the record comment was last modified. Omitted if there is no comment.
  final pulumi.Input<String> commentModifiedOn;
  /// A valid IPv4 address.
  final pulumi.Input<String> content;
  /// When the record was created.
  final pulumi.Input<String> createdOn;
  /// Components of a CAA record.
  final pulumi.Input<GetDnsRecordsResultData> data;
  /// Identifier.
  final pulumi.Input<String> id;
  /// Extra Cloudflare-specific information about the record.
  final pulumi.Input<String> meta;
  /// When the record was last modified.
  final pulumi.Input<String> modifiedOn;
  /// Complete DNS record name, including the zone name, in Punycode.
  final pulumi.Input<String> name;
  /// Required for MX and URI records; ignored for other record types (but may still be returned by the API). Records with lower priorities are preferred. This field is to be deprecated in favor of the priority field within the data map.
  final pulumi.Input<double> priority;
  /// Enables private network routing to the origin.
  final pulumi.Input<bool> privateRouting;
  /// Whether the record can be proxied by Cloudflare or not.
  final pulumi.Input<bool> proxiable;
  /// Whether the record is receiving the performance and security benefits of Cloudflare.
  final pulumi.Input<bool> proxied;
  /// Settings for the DNS record.
  final pulumi.Input<GetDnsRecordsResultSettings> settings;
  /// Custom tags for the DNS record. This field has no effect on DNS responses.
  final pulumi.Input<List<String>> tags;
  /// When the record tags were last modified. Omitted if there are no tags.
  final pulumi.Input<String> tagsModifiedOn;
  /// Time To Live (TTL) of the DNS record in seconds. Setting to 1 means 'automatic'. Value must be between 60 and 86400, with the minimum reduced to 30 for Enterprise zones.
  final pulumi.Input<double> ttl;
  /// Record type.
  /// Available values: "A", "AAAA", "CNAME", "MX", "NS", "OPENPGPKEY", "PTR", "TXT", "CAA", "CERT", "DNSKEY", "DS", "HTTPS", "LOC", "NAPTR", "SMIMEA", "SRV", "SSHFP", "SVCB", "TLSA", "URI".
  final pulumi.Input<String> type;

  /// Creates a new [GetDnsRecordsResult].
  /// [comment] Comments or notes about the DNS record. This field has no effect on DNS responses.
  /// [commentModifiedOn] When the record comment was last modified. Omitted if there is no comment.
  /// [content] A valid IPv4 address.
  /// [createdOn] When the record was created.
  /// [data] Components of a CAA record.
  /// [id] Identifier.
  /// [meta] Extra Cloudflare-specific information about the record.
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
  const GetDnsRecordsResult({
    required this.comment,
    required this.commentModifiedOn,
    required this.content,
    required this.createdOn,
    required this.data,
    required this.id,
    required this.meta,
    required this.modifiedOn,
    required this.name,
    required this.priority,
    required this.privateRouting,
    required this.proxiable,
    required this.proxied,
    required this.settings,
    required this.tags,
    required this.tagsModifiedOn,
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'commentModifiedOn': commentModifiedOn,
      'content': content,
      'createdOn': createdOn,
      'data': pulumi.Input.mapInputValue<GetDnsRecordsResultData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'id': id,
      'meta': meta,
      'modifiedOn': modifiedOn,
      'name': name,
      'priority': priority,
      'privateRouting': privateRouting,
      'proxiable': proxiable,
      'proxied': proxied,
      'settings': pulumi.Input.mapInputValue<GetDnsRecordsResultSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'tags': tags,
      'tagsModifiedOn': tagsModifiedOn,
      'ttl': ttl,
      'type': type,
    };
  }

  factory GetDnsRecordsResult.fromMap(Map<String, dynamic> map) {
    return GetDnsRecordsResult(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      commentModifiedOn: pulumi.Input.fromValue(map['commentModifiedOn'] as String),
      content: pulumi.Input.fromValue(map['content'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      data: pulumi.Input.fromValue(GetDnsRecordsResultData.fromMap((map['data']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(map['meta'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toDouble()),
      privateRouting: pulumi.Input.fromValue(map['privateRouting'] as bool),
      proxiable: pulumi.Input.fromValue(map['proxiable'] as bool),
      proxied: pulumi.Input.fromValue(map['proxied'] as bool),
      settings: pulumi.Input.fromValue(GetDnsRecordsResultSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      tagsModifiedOn: pulumi.Input.fromValue(map['tagsModifiedOn'] as String),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toDouble()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
