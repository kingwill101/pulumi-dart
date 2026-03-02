// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InfraAlertConditionCritical {
  final pulumi.Input<int> duration;
  final pulumi.Input<String>? timeFunction;
  final pulumi.Input<double>? value;

  /// Creates a new [InfraAlertConditionCritical].
  /// [duration] Required.
  /// [timeFunction] Optional.
  /// [value] Optional.
  InfraAlertConditionCritical({
    required this.duration,
    this.timeFunction,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'timeFunction': ?timeFunction,
      'value': ?value,
    };
  }

  factory InfraAlertConditionCritical.fromMap(Map<String, dynamic> map) {
    return InfraAlertConditionCritical(
      duration: (map['duration'] as int).input(),
      timeFunction: map['timeFunction'] == null ? null : (map['timeFunction'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as double).input(),
    );
  }
}

