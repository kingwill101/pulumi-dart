// ignore_for_file: unused_element, unnecessary_cast


class GetSrvRecordRecord {
  /// Port the service is listening on.
  final int port;
  /// Priority of the SRV record.
  final int priority;
  /// FQDN of the service.
  final String target;
  /// Weight of the SRV record.
  final int weight;

  /// Creates a new [GetSrvRecordRecord].
  /// [port] Port the service is listening on.
  /// [priority] Priority of the SRV record.
  /// [target] FQDN of the service.
  /// [weight] Weight of the SRV record.
  GetSrvRecordRecord({
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

  factory GetSrvRecordRecord.fromMap(Map<String, dynamic> map) {
    return GetSrvRecordRecord(
      port: map['port'] as int,
      priority: map['priority'] as int,
      target: map['target'] as String,
      weight: map['weight'] as int,
    );
  }
}

