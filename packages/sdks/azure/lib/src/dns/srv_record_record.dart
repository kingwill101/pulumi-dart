// ignore_for_file: unused_element, unnecessary_cast


class SrvRecordRecord {
  /// Port the service is listening on.
  final int port;
  /// Priority of the SRV record.
  final int priority;
  /// FQDN of the service.
  final String target;
  /// Weight of the SRV record.
  final int weight;

  /// Creates a new [SrvRecordRecord].
  /// [port] Port the service is listening on.
  /// [priority] Priority of the SRV record.
  /// [target] FQDN of the service.
  /// [weight] Weight of the SRV record.
  SrvRecordRecord({
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

  factory SrvRecordRecord.fromMap(Map<String, dynamic> map) {
    return SrvRecordRecord(
      port: map['port'] as int,
      priority: map['priority'] as int,
      target: map['target'] as String,
      weight: map['weight'] as int,
    );
  }
}

