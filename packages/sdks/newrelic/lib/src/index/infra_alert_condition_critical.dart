// ignore_for_file: unused_element, unnecessary_cast


class InfraAlertConditionCritical {
  final int duration;
  final String? timeFunction;
  final double? value;

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
      duration: map['duration'] as int,
      timeFunction: map['timeFunction'] == null ? null : map['timeFunction'] as String,
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}

