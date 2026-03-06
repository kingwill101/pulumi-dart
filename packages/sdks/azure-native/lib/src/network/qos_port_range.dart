// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Qos Traffic Profiler Port range properties.
class QosPortRange {
  /// Qos Port Range end.
  final pulumi.Input<int>? end;
  /// Qos Port Range start.
  final pulumi.Input<int>? start;

  /// Creates a new [QosPortRange].
  /// [end] Qos Port Range end.
  /// [start] Qos Port Range start.
  const QosPortRange({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory QosPortRange.fromMap(Map<String, dynamic> map) {
    return QosPortRange(
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

