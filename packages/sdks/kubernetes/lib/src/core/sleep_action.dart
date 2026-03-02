// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SleepAction describes a "sleep" action.
class SleepAction {
  /// Seconds is the number of seconds to sleep.
  final pulumi.Input<int> seconds;

  /// Creates a new [SleepAction].
  /// [seconds] Seconds is the number of seconds to sleep.
  SleepAction({
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seconds': seconds,
    };
  }

  factory SleepAction.fromMap(Map<String, dynamic> map) {
    return SleepAction(
      seconds: (map['seconds'] as int).input(),
    );
  }
}

