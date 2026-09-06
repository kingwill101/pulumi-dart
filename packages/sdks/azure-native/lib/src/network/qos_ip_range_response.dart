// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Qos Traffic Profiler IP Range properties.
class QosIpRangeResponse {
  /// End IP Address.
  final pulumi.Input<String?>? endIP;
  /// Start IP Address.
  final pulumi.Input<String?>? startIP;

  /// Creates a new [QosIpRangeResponse].
  /// [endIP] End IP Address.
  /// [startIP] Start IP Address.
  const QosIpRangeResponse({
    this.endIP,
    this.startIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIP': ?endIP,
      'startIP': ?startIP,
    };
  }

  factory QosIpRangeResponse.fromMap(Map<String, dynamic> map) {
    return QosIpRangeResponse(
      endIP: (() { final guardedValue = map['endIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startIP: (() { final guardedValue = map['startIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
