// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRecord.
class GetRecordResult {
  /// Variable data depending on record type. For example, the "data" value for an A record would be the IPv4 address to which the domain will be mapped. For a CAA record, it would contain the domain name of the CA being granted permission to issue certificates.
  final String data;
  final String domain;

  /// An unsigned integer between 0-255 used for CAA records.
  final int flags;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
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

  /// The weight for SRV records.
  final int weight;

  /// Creates a new [GetRecordResult].
  /// [data] Variable data depending on record type. For example, the "data" value for an A record would be the IPv4 address to which the domain will be mapped. For a CAA record, it would contain the domain name of the CA being granted permission to issue certificates.
  /// [domain] Required.
  /// [flags] An unsigned integer between 0-255 used for CAA records.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [port] The port for SRV records.
  /// [priority] The priority for SRV and MX records.
  /// [tag] The parameter tag for CAA records.
  /// [ttl] This value is the time to live for the record, in seconds. This defines the time frame that clients can cache queried information before a refresh should be requested.
  /// [type] The type of the DNS record.
  /// [weight] The weight for SRV records.
  GetRecordResult({
    required this.data,
    required this.domain,
    required this.flags,
    required this.id,
    required this.name,
    required this.port,
    required this.priority,
    required this.tag,
    required this.ttl,
    required this.type,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'domain': domain,
      'flags': flags,
      'id': id,
      'name': name,
      'port': port,
      'priority': priority,
      'tag': tag,
      'ttl': ttl,
      'type': type,
      'weight': weight,
    };
  }

  factory GetRecordResult.fromMap(Map<String, dynamic> map) {
    return GetRecordResult(
      data: map['data'] as String,
      domain: map['domain'] as String,
      flags: map['flags'] as int,
      id: map['id'] as String,
      name: map['name'] as String,
      port: map['port'] as int,
      priority: map['priority'] as int,
      tag: map['tag'] as String,
      ttl: map['ttl'] as int,
      type: map['type'] as String,
      weight: map['weight'] as int,
    );
  }
}
