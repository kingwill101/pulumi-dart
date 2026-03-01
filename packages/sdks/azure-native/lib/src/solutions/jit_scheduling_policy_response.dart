// ignore_for_file: unused_element, unnecessary_cast


/// The JIT scheduling policies.
class JitSchedulingPolicyResponse {
  final String duration;
  /// The start time of the request.
  final String startTime;
  /// The type of JIT schedule.
  final String type;

  /// Creates a new [JitSchedulingPolicyResponse].
  /// [duration] Required.
  /// [startTime] The start time of the request.
  /// [type] The type of JIT schedule.
  JitSchedulingPolicyResponse({
    required this.duration,
    required this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'startTime': startTime,
      'type': type,
    };
  }

  factory JitSchedulingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return JitSchedulingPolicyResponse(
      duration: map['duration'] as String,
      startTime: map['startTime'] as String,
      type: map['type'] as String,
    );
  }
}

