// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SystraceSetup {
  /// Systrace duration in seconds. Should be between 1 and 30 seconds. 0 disables systrace.
  final pulumi.Input<int>? durationSeconds;

  /// Creates a new [SystraceSetup].
  /// [durationSeconds] Systrace duration in seconds. Should be between 1 and 30 seconds. 0 disables systrace.
  const SystraceSetup({
    this.durationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationSeconds': ?durationSeconds,
    };
  }

  factory SystraceSetup.fromMap(Map<String, dynamic> map) {
    return SystraceSetup(
      durationSeconds: (() { final guardedValue = map['durationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

