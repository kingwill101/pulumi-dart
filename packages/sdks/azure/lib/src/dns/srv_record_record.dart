// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SrvRecordRecord {
  /// Port the service is listening on.
  final pulumi.Input<int> port;
  /// Priority of the SRV record.
  final pulumi.Input<int> priority;
  /// FQDN of the service.
  final pulumi.Input<String> target;
  /// Weight of the SRV record.
  final pulumi.Input<int> weight;

  /// Creates a new [SrvRecordRecord].
  /// [port] Port the service is listening on.
  /// [priority] Priority of the SRV record.
  /// [target] FQDN of the service.
  /// [weight] Weight of the SRV record.
  const SrvRecordRecord({
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
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      priority: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['priority'])),
      target: pulumi.Input.fromValue(map['target'] as String),
      weight: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['weight'])),
    );
  }
}
