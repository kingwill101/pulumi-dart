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
  const InfraAlertConditionCritical({
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
      duration: pulumi.Input.fromValue(map['duration'] as int),
      timeFunction: (() { final guardedValue = map['timeFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

