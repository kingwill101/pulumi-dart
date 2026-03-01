// ignore_for_file: unused_element, unnecessary_cast


/// Qos Traffic Profiler Port range properties.
class QosPortRangeResponse {
  /// Qos Port Range end.
  final int? end;
  /// Qos Port Range start.
  final int? start;

  /// Creates a new [QosPortRangeResponse].
  /// [end] Qos Port Range end.
  /// [start] Qos Port Range start.
  QosPortRangeResponse({
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
      end: map['end'] == null ? null : map['end'] as int,
      start: map['start'] == null ? null : map['start'] as int,
    );
  }
}

