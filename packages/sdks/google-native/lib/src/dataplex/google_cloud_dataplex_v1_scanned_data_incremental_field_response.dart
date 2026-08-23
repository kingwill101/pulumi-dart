// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A data range denoted by a pair of start/end values of a field.
class GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse {
  /// Value that marks the end of the range.
  final pulumi.Input<String> end;
  /// The field that contains values which monotonically increases over time (e.g. a timestamp column).
  final pulumi.Input<String> field;
  /// Value that marks the start of the range.
  final pulumi.Input<String> start;

  /// Creates a new [GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse].
  /// [end] Value that marks the end of the range.
  /// [field] The field that contains values which monotonically increases over time (e.g. a timestamp column).
  /// [start] Value that marks the start of the range.
  const GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse({
    required this.end,
    required this.field,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'field': field,
      'start': start,
    };
  }

  factory GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse(
      end: pulumi.Input.fromValue(map['end'] as String),
      field: pulumi.Input.fromValue(map['field'] as String),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}
