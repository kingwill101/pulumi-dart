// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceRollbackConfig {
  /// Delay between task rollbacks (ns|us|ms|s|m|h). Defaults to `0s`.
  final pulumi.Input<String>? delay;
  /// Action on rollback failure: pause | continue. Defaults to `pause`.
  final pulumi.Input<String>? failureAction;
  /// Failure rate to tolerate during a rollback. Defaults to `0.0`.
  final pulumi.Input<String>? maxFailureRatio;
  /// Duration after each task rollback to monitor for failure (ns|us|ms|s|m|h). Defaults to `5s`.
  final pulumi.Input<String>? monitor;
  /// Rollback order: either 'stop-first' or 'start-first'. Defaults to `stop-first`.
  final pulumi.Input<String>? order;
  /// Maximum number of tasks to be rollbacked in one iteration. Defaults to `1`
  final pulumi.Input<int>? parallelism;

  /// Creates a new [ServiceRollbackConfig].
  /// [delay] Delay between task rollbacks (ns|us|ms|s|m|h). Defaults to `0s`.
  /// [failureAction] Action on rollback failure: pause | continue. Defaults to `pause`.
  /// [maxFailureRatio] Failure rate to tolerate during a rollback. Defaults to `0.0`.
  /// [monitor] Duration after each task rollback to monitor for failure (ns|us|ms|s|m|h). Defaults to `5s`.
  /// [order] Rollback order: either 'stop-first' or 'start-first'. Defaults to `stop-first`.
  /// [parallelism] Maximum number of tasks to be rollbacked in one iteration. Defaults to `1`
  const ServiceRollbackConfig({
    this.delay,
    this.failureAction,
    this.maxFailureRatio,
    this.monitor,
    this.order,
    this.parallelism,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delay': ?delay,
      'failureAction': ?failureAction,
      'maxFailureRatio': ?maxFailureRatio,
      'monitor': ?monitor,
      'order': ?order,
      'parallelism': ?parallelism,
    };
  }

  factory ServiceRollbackConfig.fromMap(Map<String, dynamic> map) {
    return ServiceRollbackConfig(
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureAction: (() { final guardedValue = map['failureAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxFailureRatio: (() { final guardedValue = map['maxFailureRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

