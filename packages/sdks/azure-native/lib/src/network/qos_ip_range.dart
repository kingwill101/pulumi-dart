// ignore_for_file: unused_element, unnecessary_cast


/// Qos Traffic Profiler IP Range properties.
class QosIpRange {
  /// End IP Address.
  final String? endIP;
  /// Start IP Address.
  final String? startIP;

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
      endIP: map['endIP'] == null ? null : map['endIP'] as String,
      startIP: map['startIP'] == null ? null : map['startIP'] as String,
    );
  }
}

