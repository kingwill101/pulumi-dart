// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SRVRecordRecord {
  /// The Port the service is listening on.
  final pulumi.Input<int> port;
  /// The priority of the SRV record.
  final pulumi.Input<int> priority;
  /// The FQDN of the service.
  final pulumi.Input<String> target;
  /// The Weight of the SRV record.
  final pulumi.Input<int> weight;

  /// Creates a new [SRVRecordRecord].
  /// [port] The Port the service is listening on.
  /// [priority] The priority of the SRV record.
  /// [target] The FQDN of the service.
  /// [weight] The Weight of the SRV record.
  const SRVRecordRecord({
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
      port: pulumi.Input.fromValue(map['port'] as int),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      target: pulumi.Input.fromValue(map['target'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

