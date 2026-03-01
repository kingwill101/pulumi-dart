// ignore_for_file: unused_element, unnecessary_cast


class GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration {
  /// Span of time that's a fraction of a second at nanosecond
  /// resolution. Durations less than one second are represented
  /// with a 0 seconds field and a positive nanos field. Must
  /// be from 0 to 999,999,999 inclusive.
  final int nanos;
  /// Span of time at a resolution of a second.
  /// The value must be between 1 and 3600, which is 3,600 seconds (one hour).
  final int seconds;

  /// Creates a new [GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration].
  /// [nanos] Span of time that's a fraction of a second at nanosecond
  /// [seconds] Span of time at a resolution of a second.
  GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration({
    required this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': nanos,
      'seconds': seconds,
    };
  }

  factory GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateSchedulingGracefulShutdownMaxDuration(
      nanos: map['nanos'] as int,
      seconds: map['seconds'] as int,
    );
  }
}

