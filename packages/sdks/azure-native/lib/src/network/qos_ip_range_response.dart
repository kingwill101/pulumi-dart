// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Qos Traffic Profiler IP Range properties.
class QosIpRangeResponse {
  /// End IP Address.
  final pulumi.Input<String>? endIP;
  /// Start IP Address.
  final pulumi.Input<String>? startIP;

  /// Creates a new [QosIpRangeResponse].
  /// [endIP] End IP Address.
  /// [startIP] Start IP Address.
  QosIpRangeResponse({
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
      endIP: map['endIP'] == null ? null : (map['endIP']! as String).input(),
      startIP: map['startIP'] == null ? null : (map['startIP']! as String).input(),
    );
  }
}

