// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_dns_result_error.dart';
import 'get_email_routing_dns_result_record.dart';

class GetEmailRoutingDnsResult {
  /// DNS record content.
  final pulumi.Input<String> content;
  final pulumi.Input<List<GetEmailRoutingDnsResultError>> errors;
  /// DNS record name (or @ for the zone apex).
  final pulumi.Input<String> name;
  /// Required for MX, SRV and URI records. Unused by other record types. Records with lower priorities are preferred.
  final pulumi.Input<double> priority;
  final pulumi.Input<List<GetEmailRoutingDnsResultRecord>> records;
  /// Time to live, in seconds, of the DNS record. Must be between 60 and 86400, or 1 for 'automatic'.
  final pulumi.Input<double> ttl;
  /// DNS record type.
  /// Available values: "A", "AAAA", "CNAME", "HTTPS", "TXT", "SRV", "LOC", "MX", "NS", "CERT", "DNSKEY", "DS", "NAPTR", "SMIMEA", "SSHFP", "SVCB", "TLSA", "URI".
  final pulumi.Input<String> type;

  /// Creates a new [GetEmailRoutingDnsResult].
  /// [content] DNS record content.
  /// [errors] Required.
  /// [name] DNS record name (or @ for the zone apex).
  /// [priority] Required for MX, SRV and URI records. Unused by other record types. Records with lower priorities are preferred.
  /// [records] Required.
  /// [ttl] Time to live, in seconds, of the DNS record. Must be between 60 and 86400, or 1 for 'automatic'.
  /// [type] DNS record type.
  const GetEmailRoutingDnsResult({
    required this.content,
    required this.errors,
    required this.name,
    required this.priority,
    required this.records,
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'errors': pulumi.Input.mapInputValue<List<GetEmailRoutingDnsResultError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<GetEmailRoutingDnsResultError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'priority': priority,
      'records': pulumi.Input.mapInputValue<List<GetEmailRoutingDnsResultRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<GetEmailRoutingDnsResultRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ttl': ttl,
      'type': type,
    };
  }

  factory GetEmailRoutingDnsResult.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingDnsResult(
      content: pulumi.Input.fromValue(map['content'] as String),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEmailRoutingDnsResultError>(map['errors']!, (value) => GetEmailRoutingDnsResultError.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toDouble()),
      records: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEmailRoutingDnsResultRecord>(map['records']!, (value) => GetEmailRoutingDnsResultRecord.fromMap((value as Map).cast<String, dynamic>()))),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toDouble()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
