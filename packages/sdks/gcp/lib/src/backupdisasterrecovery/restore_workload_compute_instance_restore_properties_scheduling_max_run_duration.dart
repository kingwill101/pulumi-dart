// ignore_for_file: unused_element, unnecessary_cast


class RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration {
  /// (Optional)
  final int? nanos;
  /// (Optional)
  final int? seconds;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration].
  /// [nanos] (Optional)
  /// [seconds] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as int,
    );
  }
}

