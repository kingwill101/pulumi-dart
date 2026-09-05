// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSrvRecordRecord {
  /// Port the service is listening on.
  final pulumi.Input<int> port;
  /// Priority of the SRV record.
  final pulumi.Input<int> priority;
  /// FQDN of the service.
  final pulumi.Input<String> target;
  /// Weight of the SRV record.
  final pulumi.Input<int> weight;

  /// Creates a new [GetSrvRecordRecord].
  /// [port] Port the service is listening on.
  /// [priority] Priority of the SRV record.
  /// [target] FQDN of the service.
  /// [weight] Weight of the SRV record.
  const GetSrvRecordRecord({
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
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      target: pulumi.Input.fromValue(map['target'] as String),
      weight: pulumi.Input.fromValue((map['weight'] as num).toInt()),
    );
  }
}
