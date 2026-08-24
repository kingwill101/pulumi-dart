// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_dns_result_error.dart';
import 'email_routing_dns_result_record.dart';

class EmailRoutingDnsResult {
  /// DNS record content.
  final pulumi.Input<String?>? content;
  final pulumi.Input<List<EmailRoutingDnsResultError>?>? errors;
  /// DNS record name (or @ for the zone apex).
  final pulumi.Input<String?>? name;
  /// Required for MX, SRV and URI records. Unused by other record types. Records with lower priorities are preferred.
  final pulumi.Input<double?>? priority;
  final pulumi.Input<List<EmailRoutingDnsResultRecord>?>? records;
  /// Time to live, in seconds, of the DNS record. Must be between 60 and 86400, or 1 for 'automatic'.
  final pulumi.Input<double?>? ttl;
  /// DNS record type.
  /// Available values: "A", "AAAA", "CNAME", "HTTPS", "TXT", "SRV", "LOC", "MX", "NS", "CERT", "DNSKEY", "DS", "NAPTR", "SMIMEA", "SSHFP", "SVCB", "TLSA", "URI".
  final pulumi.Input<String?>? type;

  /// Creates a new [EmailRoutingDnsResult].
  /// [content] DNS record content.
  /// [errors] Optional.
  /// [name] DNS record name (or @ for the zone apex).
  /// [priority] Required for MX, SRV and URI records. Unused by other record types. Records with lower priorities are preferred.
  /// [records] Optional.
  /// [ttl] Time to live, in seconds, of the DNS record. Must be between 60 and 86400, or 1 for 'automatic'.
  /// [type] DNS record type.
  const EmailRoutingDnsResult({
    this.content,
    this.errors,
    this.name,
    this.priority,
    this.records,
    this.ttl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<EmailRoutingDnsResultError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<EmailRoutingDnsResultError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'priority': ?priority,
      'records': ?pulumi.Input.mapOptionalInputValue<List<EmailRoutingDnsResultRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<EmailRoutingDnsResultRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory EmailRoutingDnsResult.fromMap(Map<String, dynamic> map) {
    return EmailRoutingDnsResult(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailRoutingDnsResultError>(guardedValue, (value) => EmailRoutingDnsResultError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      records: (() { final guardedValue = map['records']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailRoutingDnsResultRecord>(guardedValue, (value) => EmailRoutingDnsResultRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
