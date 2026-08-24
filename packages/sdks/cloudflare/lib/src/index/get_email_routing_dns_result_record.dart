// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingDnsResultRecord {
  /// DNS record content.
  final pulumi.Input<String> content;
  /// DNS record name (or @ for the zone apex).
  final pulumi.Input<String> name;
  /// Required for MX, SRV and URI records. Unused by other record types. Records with lower priorities are preferred.
  final pulumi.Input<double> priority;
  /// Time to live, in seconds, of the DNS record. Must be between 60 and 86400, or 1 for 'automatic'.
  final pulumi.Input<double> ttl;
  /// DNS record type.
  /// Available values: "A", "AAAA", "CNAME", "HTTPS", "TXT", "SRV", "LOC", "MX", "NS", "CERT", "DNSKEY", "DS", "NAPTR", "SMIMEA", "SSHFP", "SVCB", "TLSA", "URI".
  final pulumi.Input<String> type;

  /// Creates a new [GetEmailRoutingDnsResultRecord].
  /// [content] DNS record content.
  /// [name] DNS record name (or @ for the zone apex).
  /// [priority] Required for MX, SRV and URI records. Unused by other record types. Records with lower priorities are preferred.
  /// [ttl] Time to live, in seconds, of the DNS record. Must be between 60 and 86400, or 1 for 'automatic'.
  /// [type] DNS record type.
  const GetEmailRoutingDnsResultRecord({
    required this.content,
    required this.name,
    required this.priority,
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'name': name,
      'priority': priority,
      'ttl': ttl,
      'type': type,
    };
  }

  factory GetEmailRoutingDnsResultRecord.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingDnsResultRecord(
      content: pulumi.Input.fromValue(map['content'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toDouble()),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toDouble()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
