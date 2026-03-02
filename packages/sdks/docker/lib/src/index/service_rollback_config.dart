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
  ServiceRollbackConfig({
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
      delay: map['delay'] == null ? null : (map['delay']! as String).input(),
      failureAction: map['failureAction'] == null ? null : (map['failureAction']! as String).input(),
      maxFailureRatio: map['maxFailureRatio'] == null ? null : (map['maxFailureRatio']! as String).input(),
      monitor: map['monitor'] == null ? null : (map['monitor']! as String).input(),
      order: map['order'] == null ? null : (map['order']! as String).input(),
      parallelism: map['parallelism'] == null ? null : (map['parallelism']! as int).input(),
    );
  }
}

