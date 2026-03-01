// ignore_for_file: unused_element, unnecessary_cast


/// SleepAction describes a "sleep" action.
class SleepActionPatch {
  /// Seconds is the number of seconds to sleep.
  final int? seconds;

  /// Creates a new [SleepActionPatch].
  /// [seconds] Seconds is the number of seconds to sleep.
  SleepActionPatch({
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seconds': ?seconds,
    };
  }

  factory SleepActionPatch.fromMap(Map<String, dynamic> map) {
    return SleepActionPatch(
      seconds: map['seconds'] == null ? null : map['seconds'] as int,
    );
  }
}

