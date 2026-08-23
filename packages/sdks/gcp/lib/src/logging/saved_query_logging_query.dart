// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saved_query_logging_query_summary_field.dart';

class SavedQueryLoggingQuery {
  /// An [advanced logs filter](https://cloud.google.com/logging/docs/view/advanced-filters) which
  /// is used to match log entries.
  final pulumi.Input<String> filter;
  /// Characters will be counted from the end of the string.
  final pulumi.Input<int>? summaryFieldEnd;
  /// Characters will be counted from the start of the string.
  final pulumi.Input<int>? summaryFieldStart;
  /// The names of the fields to display in the summary.
  /// Structure is documented below.
  final pulumi.Input<List<SavedQueryLoggingQuerySummaryField>>? summaryFields;

  /// Creates a new [SavedQueryLoggingQuery].
  /// [filter] An [advanced logs filter](https://cloud.google.com/logging/docs/view/advanced-filters) which
  /// [summaryFieldEnd] Characters will be counted from the end of the string.
  /// [summaryFieldStart] Characters will be counted from the start of the string.
  /// [summaryFields] The names of the fields to display in the summary.
  const SavedQueryLoggingQuery({
    required this.filter,
    this.summaryFieldEnd,
    this.summaryFieldStart,
    this.summaryFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'summaryFieldEnd': ?summaryFieldEnd,
      'summaryFieldStart': ?summaryFieldStart,
      'summaryFields': ?pulumi.Input.mapOptionalInputValue<List<SavedQueryLoggingQuerySummaryField>, List<Map<String, dynamic>>>(summaryFields, (value) => pulumi.Input.encodeList<SavedQueryLoggingQuerySummaryField, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SavedQueryLoggingQuery.fromMap(Map<String, dynamic> map) {
    return SavedQueryLoggingQuery(
      filter: pulumi.Input.fromValue(map['filter'] as String),
      summaryFieldEnd: (() { final guardedValue = map['summaryFieldEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      summaryFieldStart: (() { final guardedValue = map['summaryFieldStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      summaryFields: (() { final guardedValue = map['summaryFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SavedQueryLoggingQuerySummaryField>(guardedValue, (value) => SavedQueryLoggingQuerySummaryField.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
