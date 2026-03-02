// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConditionTerm {
  /// In minutes, must be in the range of 5 to 120, inclusive.
  final pulumi.Input<int> duration;
  /// One of (above, below, equal). Defaults to equal.
  final pulumi.Input<String>? operator;
  /// One of (critical, warning). Defaults to critical.
  final pulumi.Input<String>? priority;
  /// Must be 0 or greater.
  final pulumi.Input<double> threshold;
  /// One of (all, any).
  final pulumi.Input<String> timeFunction;

  /// Creates a new [AlertConditionTerm].
  /// [duration] In minutes, must be in the range of 5 to 120, inclusive.
  /// [operator] One of (above, below, equal). Defaults to equal.
  /// [priority] One of (critical, warning). Defaults to critical.
  /// [threshold] Must be 0 or greater.
  /// [timeFunction] One of (all, any).
  AlertConditionTerm({
    required this.duration,
    this.operator,
    this.priority,
    required this.threshold,
    required this.timeFunction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'operator': ?operator,
      'priority': ?priority,
      'threshold': threshold,
      'timeFunction': timeFunction,
    };
  }

  factory AlertConditionTerm.fromMap(Map<String, dynamic> map) {
    return AlertConditionTerm(
      duration: (map['duration'] as int).input(),
      operator: map['operator'] == null ? null : (map['operator'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as String).input(),
      threshold: (map['threshold'] as double).input(),
      timeFunction: (map['timeFunction'] as String).input(),
    );
  }
}

