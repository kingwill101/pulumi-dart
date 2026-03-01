// ignore_for_file: unused_element, unnecessary_cast


class ServiceUpdateConfig {
  /// Delay between task updates `(ns|us|ms|s|m|h)`. Defaults to `0s`.
  final String? delay;
  /// Action on update failure: `pause`, `continue` or `rollback`. Defaults to `pause`.
  final String? failureAction;
  /// Failure rate to tolerate during an update. Defaults to `0.0`.
  final String? maxFailureRatio;
  /// Duration after each task update to monitor for failure (ns|us|ms|s|m|h). Defaults to `5s`.
  final String? monitor;
  /// Update order: either 'stop-first' or 'start-first'. Defaults to `stop-first`.
  final String? order;
  /// Maximum number of tasks to be updated in one iteration. Defaults to `1`
  final int? parallelism;

  /// Creates a new [ServiceUpdateConfig].
  /// [delay] Delay between task updates `(ns|us|ms|s|m|h)`. Defaults to `0s`.
  /// [failureAction] Action on update failure: `pause`, `continue` or `rollback`. Defaults to `pause`.
  /// [maxFailureRatio] Failure rate to tolerate during an update. Defaults to `0.0`.
  /// [monitor] Duration after each task update to monitor for failure (ns|us|ms|s|m|h). Defaults to `5s`.
  /// [order] Update order: either 'stop-first' or 'start-first'. Defaults to `stop-first`.
  /// [parallelism] Maximum number of tasks to be updated in one iteration. Defaults to `1`
  ServiceUpdateConfig({
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
      delay: map['delay'] == null ? null : map['delay'] as String,
      failureAction: map['failureAction'] == null ? null : map['failureAction'] as String,
      maxFailureRatio: map['maxFailureRatio'] == null ? null : map['maxFailureRatio'] as String,
      monitor: map['monitor'] == null ? null : map['monitor'] as String,
      order: map['order'] == null ? null : map['order'] as String,
      parallelism: map['parallelism'] == null ? null : map['parallelism'] as int,
    );
  }
}

