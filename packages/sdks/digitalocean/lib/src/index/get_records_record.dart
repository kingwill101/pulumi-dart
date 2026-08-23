// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRecordsRecord {
  /// The domain name to search for DNS records
  final pulumi.Input<String> domain;
  /// An unsigned integer between 0-255 used for CAA records.
  final pulumi.Input<int> flags;
  /// The ID of the record.
  final pulumi.Input<int> id;
  /// The name of the DNS record.
  final pulumi.Input<String> name;
  /// The port for SRV records.
  final pulumi.Input<int> port;
  /// The priority for SRV and MX records.
  final pulumi.Input<int> priority;
  /// The parameter tag for CAA records.
  final pulumi.Input<String> tag;
  /// This value is the time to live for the record, in seconds. This defines the time frame that clients can cache queried information before a refresh should be requested.
  final pulumi.Input<int> ttl;
  /// The type of the DNS record.
  final pulumi.Input<String> type;
  /// Variable data depending on record type. For example, the "data" value for an A record would be the IPv4 address to which the domain will be mapped. For a CAA record, it would contain the domain name of the CA being granted permission to issue certificates.
  final pulumi.Input<String> value;
  /// The weight for SRV records.
  final pulumi.Input<int> weight;

  /// Creates a new [GetRecordsRecord].
  /// [domain] The domain name to search for DNS records
  /// [flags] An unsigned integer between 0-255 used for CAA records.
  /// [id] The ID of the record.
  /// [name] The name of the DNS record.
  /// [port] The port for SRV records.
  /// [priority] The priority for SRV and MX records.
  /// [tag] The parameter tag for CAA records.
  /// [ttl] This value is the time to live for the record, in seconds. This defines the time frame that clients can cache queried information before a refresh should be requested.
  /// [type] The type of the DNS record.
  /// [value] Variable data depending on record type. For example, the "data" value for an A record would be the IPv4 address to which the domain will be mapped. For a CAA record, it would contain the domain name of the CA being granted permission to issue certificates.
  /// [weight] The weight for SRV records.
  const GetRecordsRecord({
    required this.domain,
    required this.flags,
    required this.id,
    required this.name,
    required this.port,
    required this.priority,
    required this.tag,
    required this.ttl,
    required this.type,
    required this.value,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'flags': flags,
      'id': id,
      'name': name,
      'port': port,
      'priority': priority,
      'tag': tag,
      'ttl': ttl,
      'type': type,
      'value': value,
      'weight': weight,
    };
  }

  factory GetRecordsRecord.fromMap(Map<String, dynamic> map) {
    return GetRecordsRecord(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      flags: pulumi.Input.fromValue(map['flags'] as int),
      id: pulumi.Input.fromValue(map['id'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      tag: pulumi.Input.fromValue(map['tag'] as String),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
