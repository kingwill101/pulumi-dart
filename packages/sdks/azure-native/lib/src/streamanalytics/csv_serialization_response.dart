// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how data from an input is serialized or how data is serialized when written to an output in CSV format.
class CsvSerializationResponse {
  /// Specifies the encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? encoding;
  /// Specifies the delimiter that will be used to separate comma-separated value (CSV) records. See https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-input or https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output for a list of supported values. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? fieldDelimiter;
  /// Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Csv'.
  final pulumi.Input<String> type;

  /// Creates a new [CsvSerializationResponse].
  /// [encoding] Specifies the encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. Required on PUT (CreateOrReplace) requests.
  /// [fieldDelimiter] Specifies the delimiter that will be used to separate comma-separated value (CSV) records. See https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-input or https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output for a list of supported values. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
  CsvSerializationResponse({
    this.encoding,
    this.fieldDelimiter,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'fieldDelimiter': ?fieldDelimiter,
      'type': type,
    };
  }

  factory CsvSerializationResponse.fromMap(Map<String, dynamic> map) {
    return CsvSerializationResponse(
      encoding: map['encoding'] == null ? null : (map['encoding'] as String).input(),
      fieldDelimiter: map['fieldDelimiter'] == null ? null : (map['fieldDelimiter'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

