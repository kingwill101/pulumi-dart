// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailRoutingDnsResultErrorMissing {
  /// DNS record content.
  final pulumi.Input<String?>? content;
  /// DNS record name (or @ for the zone apex).
  final pulumi.Input<String?>? name;
  /// Required for MX, SRV and URI records. Unused by other record types. Records with lower priorities are preferred.
  final pulumi.Input<double?>? priority;
  /// Time to live, in seconds, of the DNS record. Must be between 60 and 86400, or 1 for 'automatic'.
  final pulumi.Input<double?>? ttl;
  /// DNS record type.
  /// Available values: "A", "AAAA", "CNAME", "HTTPS", "TXT", "SRV", "LOC", "MX", "NS", "CERT", "DNSKEY", "DS", "NAPTR", "SMIMEA", "SSHFP", "SVCB", "TLSA", "URI".
  final pulumi.Input<String?>? type;

  /// Creates a new [EmailRoutingDnsResultErrorMissing].
  /// [content] DNS record content.
  /// [name] DNS record name (or @ for the zone apex).
  /// [priority] Required for MX, SRV and URI records. Unused by other record types. Records with lower priorities are preferred.
  /// [ttl] Time to live, in seconds, of the DNS record. Must be between 60 and 86400, or 1 for 'automatic'.
  /// [type] DNS record type.
  const EmailRoutingDnsResultErrorMissing({
    this.content,
    this.name,
    this.priority,
    this.ttl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'name': ?name,
      'priority': ?priority,
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory EmailRoutingDnsResultErrorMissing.fromMap(Map<String, dynamic> map) {
    return EmailRoutingDnsResultErrorMissing(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
