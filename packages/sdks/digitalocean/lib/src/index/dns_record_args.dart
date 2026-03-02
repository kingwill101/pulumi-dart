// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_dns_record_dns_record_args_doc}
/// The set of arguments for DnsRecord.
/// {@endtemplate}
/// {@macro pulumi_index_dns_record_dns_record_args_doc}
class DnsRecordArgs {
  /// The domain to add the record to.
  final pulumi.Input<String> domain;
  /// The flags of the record. Only valid when type is `CAA`. Must be between 0 and 255.
  final pulumi.Input<int>? flags;
  /// The hostname of the record. Use `@` for records on domain's name itself.
  final pulumi.Input<String>? name;
  /// The port of the record. Only valid when type is `SRV`.  Must be between 1 and 65535.
  final pulumi.Input<int>? port;
  /// The priority of the record. Only valid when type is `MX` or `SRV`. Must be between 0 and 65535.
  final pulumi.Input<int>? priority;
  /// The tag of the record. Only valid when type is `CAA`. Must be one of `issue`, `issuewild`, or `iodef`.
  final pulumi.Input<String>? tag;
  /// The time to live for the record, in seconds. Must be at least 0. Defaults to 1800.
  final pulumi.Input<int>? ttl;
  /// The type of record. Must be one of `A`, `AAAA`, `CAA`, `CNAME`, `MX`, `NS`, `TXT`, or `SRV`.
  final pulumi.Input<String> type;
  /// The value of the record.
  final pulumi.Input<String> value;
  /// The weight of the record. Only valid when type is `SRV`.  Must be between 0 and 65535.
  final pulumi.Input<int>? weight;

  /// Creates a new [DnsRecordArgs].
  /// [domain] The domain to add the record to.
  /// [flags] The flags of the record. Only valid when type is `CAA`. Must be between 0 and 255.
  /// [name] The hostname of the record. Use `@` for records on domain's name itself.
  /// [port] The port of the record. Only valid when type is `SRV`.  Must be between 1 and 65535.
  /// [priority] The priority of the record. Only valid when type is `MX` or `SRV`. Must be between 0 and 65535.
  /// [tag] The tag of the record. Only valid when type is `CAA`. Must be one of `issue`, `issuewild`, or `iodef`.
  /// [ttl] The time to live for the record, in seconds. Must be at least 0. Defaults to 1800.
  /// [type] The type of record. Must be one of `A`, `AAAA`, `CAA`, `CNAME`, `MX`, `NS`, `TXT`, or `SRV`.
  /// [value] The value of the record.
  /// [weight] The weight of the record. Only valid when type is `SRV`.  Must be between 0 and 65535.
  DnsRecordArgs({
    required this.domain,
    this.flags,
    this.name,
    this.port,
    this.priority,
    this.tag,
    this.ttl,
    required this.type,
    required this.value,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'flags': ?flags,
      'name': ?name,
      'port': ?port,
      'priority': ?priority,
      'tag': ?tag,
      'ttl': ?ttl,
      'type': type,
      'value': value,
      'weight': ?weight,
    };
  }

  factory DnsRecordArgs.fromMap(Map<String, dynamic> map) {
    return DnsRecordArgs(
      domain: (map['domain'] as String).input(),
      flags: map['flags'] == null ? null : (map['flags']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as int).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight']! as int).input(),
    );
  }
}

