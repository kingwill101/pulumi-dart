// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SavedQueryLoggingQuerySummaryField {
  /// The field from the LogEntry to include in the summary line.
  final pulumi.Input<String?>? field;

  /// Creates a new [SavedQueryLoggingQuerySummaryField].
  /// [field] The field from the LogEntry to include in the summary line.
  const SavedQueryLoggingQuerySummaryField({
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
    };
  }

  factory SavedQueryLoggingQuerySummaryField.fromMap(Map<String, dynamic> map) {
    return SavedQueryLoggingQuerySummaryField(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
