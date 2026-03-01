// ignore_for_file: unused_element, unnecessary_cast


class BackendServiceMaxStreamDuration {
  /// Span of time that's a fraction of a second at nanosecond resolution.
  /// Durations less than one second are represented with a 0 seconds field and a positive nanos field.
  /// Must be from 0 to 999,999,999 inclusive.
  final int? nanos;
  /// Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive. (int64 format)
  final String seconds;

  /// Creates a new [BackendServiceMaxStreamDuration].
  /// [nanos] Span of time that's a fraction of a second at nanosecond resolution.
  /// [seconds] Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive. (int64 format)
  BackendServiceMaxStreamDuration({
    this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': seconds,
    };
  }

  factory BackendServiceMaxStreamDuration.fromMap(Map<String, dynamic> map) {
    return BackendServiceMaxStreamDuration(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] as String,
    );
  }
}

