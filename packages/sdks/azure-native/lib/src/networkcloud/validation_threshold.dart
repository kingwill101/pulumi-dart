// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ValidationThreshold {
  /// Selection of how the type evaluation is applied to the cluster calculation.
  final pulumi.Input<dynamic> grouping;
  /// Selection of how the threshold should be evaluated.
  final pulumi.Input<dynamic> type;
  /// The numeric threshold value.
  final pulumi.Input<double> value;

  /// Creates a new [ValidationThreshold].
  /// [grouping] Selection of how the type evaluation is applied to the cluster calculation.
  /// [type] Selection of how the threshold should be evaluated.
  /// [value] The numeric threshold value.
  const ValidationThreshold({
    required this.grouping,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grouping': grouping,
      'type': type,
      'value': value,
    };
  }

  factory ValidationThreshold.fromMap(Map<String, dynamic> map) {
    return ValidationThreshold(
      grouping: pulumi.Input.fromValue(map['grouping']),
      type: pulumi.Input.fromValue(map['type']),
      value: pulumi.Input.fromValue((map['value'] as num).toDouble()),
    );
  }
}
