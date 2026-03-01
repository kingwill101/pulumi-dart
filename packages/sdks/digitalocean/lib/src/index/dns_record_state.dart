// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DnsRecord resources.
class DnsRecordState {
  /// The domain to add the record to.
  final pulumi.Input<String>? domain;
  /// The flags of the record. Only valid when type is `CAA`. Must be between 0 and 255.
  final pulumi.Input<int>? flags;
  /// The FQDN of the record
  final pulumi.Input<String>? fqdn;
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
  final pulumi.Input<String>? type;
  /// The value of the record.
  final pulumi.Input<String>? value;
  /// The weight of the record. Only valid when type is `SRV`.  Must be between 0 and 65535.
  final pulumi.Input<int>? weight;

  /// Creates a new [DnsRecordState].
  /// [domain] The domain to add the record to.
  /// [flags] The flags of the record. Only valid when type is `CAA`. Must be between 0 and 255.
  /// [fqdn] The FQDN of the record
  /// [name] The hostname of the record. Use `@` for records on domain's name itself.
  /// [port] The port of the record. Only valid when type is `SRV`.  Must be between 1 and 65535.
  /// [priority] The priority of the record. Only valid when type is `MX` or `SRV`. Must be between 0 and 65535.
  /// [tag] The tag of the record. Only valid when type is `CAA`. Must be one of `issue`, `issuewild`, or `iodef`.
  /// [ttl] The time to live for the record, in seconds. Must be at least 0. Defaults to 1800.
  /// [type] The type of record. Must be one of `A`, `AAAA`, `CAA`, `CNAME`, `MX`, `NS`, `TXT`, or `SRV`.
  /// [value] The value of the record.
  /// [weight] The weight of the record. Only valid when type is `SRV`.  Must be between 0 and 65535.
  DnsRecordState({
    pulumi.Output<String>? domain,
    pulumi.Output<int>? flags,
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? name,
    pulumi.Output<int>? port,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? tag,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? type,
    pulumi.Output<String>? value,
    pulumi.Output<int>? weight,
  }) :
      domain = pulumi.Input.asOptionalInput<String>(domain),
      flags = pulumi.Input.asOptionalInput<int>(flags),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      name = pulumi.Input.asOptionalInput<String>(name),
      port = pulumi.Input.asOptionalInput<int>(port),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      tag = pulumi.Input.asOptionalInput<String>(tag),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asOptionalInput<String>(type),
      value = pulumi.Input.asOptionalInput<String>(value),
      weight = pulumi.Input.asOptionalInput<int>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'flags': ?flags,
      'fqdn': ?fqdn,
      'name': ?name,
      'port': ?port,
      'priority': ?priority,
      'tag': ?tag,
      'ttl': ?ttl,
      'type': ?type,
      'value': ?value,
      'weight': ?weight,
    };
  }

  factory DnsRecordState.fromMap(Map<String, dynamic> map) {
    return DnsRecordState(
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      flags: map['flags'] == null ? null : pulumi.Output.create<int>(map['flags'] as int),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      tag: map['tag'] == null ? null : pulumi.Output.create<String>(map['tag'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

