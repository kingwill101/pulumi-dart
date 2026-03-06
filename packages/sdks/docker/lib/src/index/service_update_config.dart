// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceUpdateConfig {
  /// Delay between task updates `(ns|us|ms|s|m|h)`. Defaults to `0s`.
  final pulumi.Input<String>? delay;
  /// Action on update failure: `pause`, `continue` or `rollback`. Defaults to `pause`.
  final pulumi.Input<String>? failureAction;
  /// Failure rate to tolerate during an update. Defaults to `0.0`.
  final pulumi.Input<String>? maxFailureRatio;
  /// Duration after each task update to monitor for failure (ns|us|ms|s|m|h). Defaults to `5s`.
  final pulumi.Input<String>? monitor;
  /// Update order: either 'stop-first' or 'start-first'. Defaults to `stop-first`.
  final pulumi.Input<String>? order;
  /// Maximum number of tasks to be updated in one iteration. Defaults to `1`
  final pulumi.Input<int>? parallelism;

  /// Creates a new [ServiceUpdateConfig].
  /// [delay] Delay between task updates `(ns|us|ms|s|m|h)`. Defaults to `0s`.
  /// [failureAction] Action on update failure: `pause`, `continue` or `rollback`. Defaults to `pause`.
  /// [maxFailureRatio] Failure rate to tolerate during an update. Defaults to `0.0`.
  /// [monitor] Duration after each task update to monitor for failure (ns|us|ms|s|m|h). Defaults to `5s`.
  /// [order] Update order: either 'stop-first' or 'start-first'. Defaults to `stop-first`.
  /// [parallelism] Maximum number of tasks to be updated in one iteration. Defaults to `1`
  const ServiceUpdateConfig({
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

  factory ServiceUpdateConfig.fromMap(Map<String, dynamic> map) {
    return ServiceUpdateConfig(
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureAction: (() { final guardedValue = map['failureAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxFailureRatio: (() { final guardedValue = map['maxFailureRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

