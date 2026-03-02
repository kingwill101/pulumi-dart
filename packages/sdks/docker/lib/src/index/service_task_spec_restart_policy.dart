// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecRestartPolicy {
  /// Condition for restart
  final pulumi.Input<String>? condition;
  /// Delay between restart attempts (ms|s|m|h)
  final pulumi.Input<String>? delay;
  /// Maximum attempts to restart a given container before giving up (default value is `0`, which is ignored)
  final pulumi.Input<int>? maxAttempts;
  /// The time window used to evaluate the restart policy (default value is `0`, which is unbounded) (ms|s|m|h)
  final pulumi.Input<String>? window;

  /// Creates a new [ServiceTaskSpecRestartPolicy].
  /// [condition] Condition for restart
  /// [delay] Delay between restart attempts (ms|s|m|h)
  /// [maxAttempts] Maximum attempts to restart a given container before giving up (default value is `0`, which is ignored)
  /// [window] The time window used to evaluate the restart policy (default value is `0`, which is unbounded) (ms|s|m|h)
  ServiceTaskSpecRestartPolicy({
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
      condition: map['condition'] == null ? null : (map['condition']! as String).input(),
      delay: map['delay'] == null ? null : (map['delay']! as String).input(),
      maxAttempts: map['maxAttempts'] == null ? null : (map['maxAttempts']! as int).input(),
      window: map['window'] == null ? null : (map['window']! as String).input(),
    );
  }
}

