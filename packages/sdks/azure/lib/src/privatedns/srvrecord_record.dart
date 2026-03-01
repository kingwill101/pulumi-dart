// ignore_for_file: unused_element, unnecessary_cast


class SRVRecordRecord {
  /// The Port the service is listening on.
  final int port;
  /// The priority of the SRV record.
  final int priority;
  /// The FQDN of the service.
  final String target;
  /// The Weight of the SRV record.
  final int weight;

  /// Creates a new [SRVRecordRecord].
  /// [port] The Port the service is listening on.
  /// [priority] The priority of the SRV record.
  /// [target] The FQDN of the service.
  /// [weight] The Weight of the SRV record.
  SRVRecordRecord({
    required this.port,
    required this.priority,
    required this.target,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'priority': priority,
      'target': target,
      'weight': weight,
    };
  }

  factory SRVRecordRecord.fromMap(Map<String, dynamic> map) {
    return SRVRecordRecord(
      port: map['port'] as int,
      priority: map['priority'] as int,
      target: map['target'] as String,
      weight: map['weight'] as int,
    );
  }
}

