// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StepMonitorStep {
  /// The position of the step within the script ranging from 0-100.
  final pulumi.Input<int> ordinal;
  /// Name of the tag key. Valid values are `ASSERT_ELEMENT`, `ASSERT_MODAL`, `ASSERT_TEXT`, `ASSERT_TITLE`, `CLICK_ELEMENT`, `DISMISS_MODAL`, `DOUBLE_CLICK_ELEMENT`, `HOVER_ELEMENT`, `NAVIGATE`, `SECURE_TEXT_ENTRY`, `SELECT_ELEMENT`, `TEXT_ENTRY`.
  final pulumi.Input<String> type;
  /// The metadata values related to the step.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [StepMonitorStep].
  /// [ordinal] The position of the step within the script ranging from 0-100.
  /// [type] Name of the tag key. Valid values are `ASSERT_ELEMENT`, `ASSERT_MODAL`, `ASSERT_TEXT`, `ASSERT_TITLE`, `CLICK_ELEMENT`, `DISMISS_MODAL`, `DOUBLE_CLICK_ELEMENT`, `HOVER_ELEMENT`, `NAVIGATE`, `SECURE_TEXT_ENTRY`, `SELECT_ELEMENT`, `TEXT_ENTRY`.
  /// [values] The metadata values related to the step.
  StepMonitorStep({
    required this.ordinal,
    required this.type,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ordinal': ordinal,
      'type': type,
      'values': ?values,
    };
  }

  factory StepMonitorStep.fromMap(Map<String, dynamic> map) {
    return StepMonitorStep(
      ordinal: pulumi.Input.fromValue(map['ordinal'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

