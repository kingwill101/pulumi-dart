// ignore_for_file: unused_element, unnecessary_cast


/// Trigger based on total requests.
class RequestsBasedTriggerResponse {
  /// Request Count.
  final int? count;
  /// Time interval.
  final String? timeInterval;

  /// Creates a new [RequestsBasedTriggerResponse].
  /// [count] Request Count.
  /// [timeInterval] Time interval.
  RequestsBasedTriggerResponse({
    this.count,
    this.timeInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'timeInterval': ?timeInterval,
    };
  }

  factory RequestsBasedTriggerResponse.fromMap(Map<String, dynamic> map) {
    return RequestsBasedTriggerResponse(
      count: map['count'] == null ? null : map['count'] as int,
      timeInterval: map['timeInterval'] == null ? null : map['timeInterval'] as String,
    );
  }
}

