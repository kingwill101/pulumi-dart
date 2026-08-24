// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_data.dart';
import 'record_settings.dart';

/// {@template pulumi_index_record_record_args_doc}
/// The set of arguments for Record.
/// {@endtemplate}
/// {@macro pulumi_index_record_record_args_doc}
class RecordArgs {
  /// Comments or notes about the DNS record. This field has no effect on DNS responses.
  final pulumi.Input<String?>? comment;
  /// A valid IPv4 address.
  final pulumi.Input<String?>? content;
  /// Components of a MX record.
  final pulumi.Input<RecordData?>? data;
  /// DNS record name (or @ for the zone apex) in Punycode.
  final pulumi.Input<String> name;
  /// Required for MX, SRV and URI records; unused by other record types. Records with lower priorities are preferred.
  final pulumi.Input<double?>? priority;
  /// Enables private network routing to the origin.
  final pulumi.Input<bool?>? privateRouting;
  /// Whether the record is receiving the performance and security benefits of Cloudflare.
  final pulumi.Input<bool?>? proxied;
  /// Settings for the DNS record.
  final pulumi.Input<RecordSettings?>? settings;
  /// Custom tags for the DNS record. This field has no effect on DNS responses.
  final pulumi.Input<List<String>?>? tags;
  /// Time To Live (TTL) of the DNS record in seconds. Setting to 1 means 'automatic'. Value must be between 60 and 86400, with the minimum reduced to 30 for Enterprise zones.
  final pulumi.Input<double> ttl;
  /// Record type.
  /// Available values: "A", "AAAA", "CNAME", "MX", "NS", "OPENPGPKEY", "PTR", "TXT", "CAA", "CERT", "DNSKEY", "DS", "HTTPS", "LOC", "NAPTR", "SMIMEA", "SRV", "SSHFP", "SVCB", "TLSA", "URI".
  final pulumi.Input<String> type;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [RecordArgs].
  /// [comment] Comments or notes about the DNS record. This field has no effect on DNS responses.
  /// [content] A valid IPv4 address.
  /// [data] Components of a MX record.
  /// [name] DNS record name (or @ for the zone apex) in Punycode.
  /// [priority] Required for MX, SRV and URI records; unused by other record types. Records with lower priorities are preferred.
  /// [privateRouting] Enables private network routing to the origin.
  /// [proxied] Whether the record is receiving the performance and security benefits of Cloudflare.
  /// [settings] Settings for the DNS record.
  /// [tags] Custom tags for the DNS record. This field has no effect on DNS responses.
  /// [ttl] Time To Live (TTL) of the DNS record in seconds. Setting to 1 means 'automatic'. Value must be between 60 and 86400, with the minimum reduced to 30 for Enterprise zones.
  /// [type] Record type.
  /// [zoneId] Identifier.
  const RecordArgs({
    this.comment,
    this.content,
    this.data,
    required this.name,
    this.priority,
    this.privateRouting,
    this.proxied,
    this.settings,
    this.tags,
    required this.ttl,
    required this.type,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'content': ?content,
      'data': ?pulumi.Input.mapOptionalInputValue<RecordData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'name': name,
      'priority': ?priority,
      'privateRouting': ?privateRouting,
      'proxied': ?proxied,
      'settings': ?pulumi.Input.mapOptionalInputValue<RecordSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'tags': ?tags,
      'ttl': ttl,
      'type': type,
      'zoneId': zoneId,
    };
  }

  factory RecordArgs.fromMap(Map<String, dynamic> map) {
    return RecordArgs(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecordData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      privateRouting: (() { final guardedValue = map['privateRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      proxied: (() { final guardedValue = map['proxied']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecordSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toDouble()),
      type: pulumi.Input.fromValue(map['type'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
