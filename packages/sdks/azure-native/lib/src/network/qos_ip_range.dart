// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Qos Traffic Profiler IP Range properties.
class QosIpRange {
  /// End IP Address.
  final pulumi.Input<String>? endIP;
  /// Start IP Address.
  final pulumi.Input<String>? startIP;

  /// Creates a new [QosIpRange].
  /// [endIP] End IP Address.
  /// [startIP] Start IP Address.
  QosIpRange({
    this.endIP,
    this.startIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIP': ?endIP,
      'startIP': ?startIP,
    };
  }

  factory QosIpRange.fromMap(Map<String, dynamic> map) {
    return QosIpRange(
      endIP: map['endIP'] == null ? null : (map['endIP'] as String).input(),
      startIP: map['startIP'] == null ? null : (map['startIP'] as String).input(),
    );
  }
}

