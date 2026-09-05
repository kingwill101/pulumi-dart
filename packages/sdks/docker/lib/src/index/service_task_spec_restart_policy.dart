// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecRestartPolicy {
  /// Condition for restart
  final pulumi.Input<String?>? condition;
  /// Delay between restart attempts (ms|s|m|h)
  final pulumi.Input<String?>? delay;
  /// Maximum attempts to restart a given container before giving up (default value is `0`, which is ignored)
  final pulumi.Input<int?>? maxAttempts;
  /// The time window used to evaluate the restart policy (default value is `0`, which is unbounded) (ms|s|m|h)
  final pulumi.Input<String?>? window;

  /// Creates a new [ServiceTaskSpecRestartPolicy].
  /// [condition] Condition for restart
  /// [delay] Delay between restart attempts (ms|s|m|h)
  /// [maxAttempts] Maximum attempts to restart a given container before giving up (default value is `0`, which is ignored)
  /// [window] The time window used to evaluate the restart policy (default value is `0`, which is unbounded) (ms|s|m|h)
  const ServiceTaskSpecRestartPolicy({
    this.condition,
    this.delay,
    this.maxAttempts,
    this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'delay': ?delay,
      'maxAttempts': ?maxAttempts,
      'window': ?window,
    };
  }

  factory ServiceTaskSpecRestartPolicy.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecRestartPolicy(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxAttempts: (() { final guardedValue = map['maxAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      window: (() { final guardedValue = map['window']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
