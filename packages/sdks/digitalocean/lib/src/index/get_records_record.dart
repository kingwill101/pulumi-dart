// ignore_for_file: unused_element, unnecessary_cast


class GetRecordsRecord {
  /// The domain name to search for DNS records
  final String domain;
  /// An unsigned integer between 0-255 used for CAA records.
  final int flags;
  /// The ID of the record.
  final int id;
  /// The name of the DNS record.
  final String name;
  /// The port for SRV records.
  final int port;
  /// The priority for SRV and MX records.
  final int priority;
  /// The parameter tag for CAA records.
  final String tag;
  /// This value is the time to live for the record, in seconds. This defines the time frame that clients can cache queried information before a refresh should be requested.
  final int ttl;
  /// The type of the DNS record.
  final String type;
  /// Variable data depending on record type. For example, the "data" value for an A record would be the IPv4 address to which the domain will be mapped. For a CAA record, it would contain the domain name of the CA being granted permission to issue certificates.
  final String value;
  /// The weight for SRV records.
  final int weight;

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
  GetRecordsRecord({
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
      domain: map['domain'] as String,
      flags: map['flags'] as int,
      id: map['id'] as int,
      name: map['name'] as String,
      port: map['port'] as int,
      priority: map['priority'] as int,
      tag: map['tag'] as String,
      ttl: map['ttl'] as int,
      type: map['type'] as String,
      value: map['value'] as String,
      weight: map['weight'] as int,
    );
  }
}

