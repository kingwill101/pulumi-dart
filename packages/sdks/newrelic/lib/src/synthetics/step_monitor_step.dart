// ignore_for_file: unused_element, unnecessary_cast


class StepMonitorStep {
  /// The position of the step within the script ranging from 0-100.
  final int ordinal;
  /// Name of the tag key. Valid values are `ASSERT_ELEMENT`, `ASSERT_MODAL`, `ASSERT_TEXT`, `ASSERT_TITLE`, `CLICK_ELEMENT`, `DISMISS_MODAL`, `DOUBLE_CLICK_ELEMENT`, `HOVER_ELEMENT`, `NAVIGATE`, `SECURE_TEXT_ENTRY`, `SELECT_ELEMENT`, `TEXT_ENTRY`.
  final String type;
  /// The metadata values related to the step.
  final List<String>? values;

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
      ordinal: map['ordinal'] as int,
      type: map['type'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

