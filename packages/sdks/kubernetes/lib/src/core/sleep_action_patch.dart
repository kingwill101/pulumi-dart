// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SleepAction describes a "sleep" action.
class SleepActionPatch {
  /// Seconds is the number of seconds to sleep.
  final pulumi.Input<int?>? seconds;

  /// Creates a new [SleepActionPatch].
  /// [seconds] Seconds is the number of seconds to sleep.
  const SleepActionPatch({
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seconds': ?seconds,
    };
  }

  factory SleepActionPatch.fromMap(Map<String, dynamic> map) {
    return SleepActionPatch(
      seconds: (() { final guardedValue = map['seconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
