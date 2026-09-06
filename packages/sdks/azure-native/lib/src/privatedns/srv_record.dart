// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An SRV record.
class SrvRecord {
  /// The port value for this SRV record.
  final pulumi.Input<int?>? port;
  /// The priority value for this SRV record.
  final pulumi.Input<int?>? priority;
  /// The target domain name for this SRV record.
  final pulumi.Input<String?>? target;
  /// The weight value for this SRV record.
  final pulumi.Input<int?>? weight;

  /// Creates a new [SrvRecord].
  /// [port] The port value for this SRV record.
  /// [priority] The priority value for this SRV record.
  /// [target] The target domain name for this SRV record.
  /// [weight] The weight value for this SRV record.
  const SrvRecord({
    this.port,
    this.priority,
    this.target,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'priority': ?priority,
      'target': ?target,
      'weight': ?weight,
    };
  }

  factory SrvRecord.fromMap(Map<String, dynamic> map) {
    return SrvRecord(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
