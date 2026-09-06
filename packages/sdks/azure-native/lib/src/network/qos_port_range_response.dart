// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Qos Traffic Profiler Port range properties.
class QosPortRangeResponse {
  /// Qos Port Range end.
  final pulumi.Input<int?>? end;
  /// Qos Port Range start.
  final pulumi.Input<int?>? start;

  /// Creates a new [QosPortRangeResponse].
  /// [end] Qos Port Range end.
  /// [start] Qos Port Range start.
  const QosPortRangeResponse({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory QosPortRangeResponse.fromMap(Map<String, dynamic> map) {
    return QosPortRangeResponse(
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
