// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRecord.
class GetRecordResult {
  /// Variable data depending on record type. For example, the "data" value for an A record would be the IPv4 address to which the domain will be mapped. For a CAA record, it would contain the domain name of the CA being granted permission to issue certificates.
  final String? data;
  final String? domain;
  /// An unsigned integer between 0-255 used for CAA records.
  final int? flags;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The port for SRV records.
  final int? port;
  /// The priority for SRV and MX records.
  final int? priority;
  /// The parameter tag for CAA records.
  final String? tag;
  /// This value is the time to live for the record, in seconds. This defines the time frame that clients can cache queried information before a refresh should be requested.
  final int? ttl;
  /// The type of the DNS record.
  final String? type;
  /// The weight for SRV records.
  final int? weight;

  /// Creates a new [GetRecordResult].
  /// [data] Variable data depending on record type. For example, the "data" value for an A record would be the IPv4 address to which the domain will be mapped. For a CAA record, it would contain the domain name of the CA being granted permission to issue certificates.
  /// [domain] Optional.
  /// [flags] An unsigned integer between 0-255 used for CAA records.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [port] The port for SRV records.
  /// [priority] The priority for SRV and MX records.
  /// [tag] The parameter tag for CAA records.
  /// [ttl] This value is the time to live for the record, in seconds. This defines the time frame that clients can cache queried information before a refresh should be requested.
  /// [type] The type of the DNS record.
  /// [weight] The weight for SRV records.
  const GetRecordResult({
    this.data,
    this.domain,
    this.flags,
    this.id,
    this.name,
    this.port,
    this.priority,
    this.tag,
    this.ttl,
    this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'domain': ?domain,
      'flags': ?flags,
      'id': ?id,
      'name': ?name,
      'port': ?port,
      'priority': ?priority,
      'tag': ?tag,
      'ttl': ?ttl,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory GetRecordResult.fromMap(Map<String, dynamic> map) {
    return GetRecordResult(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      flags: (() { final guardedValue = map['flags']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
