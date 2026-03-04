// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableExternalDataConfigurationCsvOption {
  /// Indicates if BigQuery should accept rows that are missing trailing optional columns.
  final pulumi.Input<bool> allowJaggedRows;

  /// Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  final pulumi.Input<bool> allowQuotedNewlines;

  /// The character encoding of the data. The supported values are UTF-8 or ISO-8859-1.
  final pulumi.Input<String> encoding;

  /// The separator for fields in a CSV file.
  final pulumi.Input<String> fieldDelimiter;
  final pulumi.Input<String> quote;

  /// The number of rows at the top of a CSV file that BigQuery will skip when reading the data.
  final pulumi.Input<int> skipLeadingRows;

  /// Specifies how source columns are matched to the table schema. Valid values are POSITION (columns matched by position, assuming same ordering) or NAME (columns matched by name, reads header row and reorders columns to align with schema field names).
  final pulumi.Input<String> sourceColumnMatch;

  /// Creates a new [GetTableExternalDataConfigurationCsvOption].
  /// [allowJaggedRows] Indicates if BigQuery should accept rows that are missing trailing optional columns.
  /// [allowQuotedNewlines] Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  /// [encoding] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1.
  /// [fieldDelimiter] The separator for fields in a CSV file.
  /// [quote] Required.
  /// [skipLeadingRows] The number of rows at the top of a CSV file that BigQuery will skip when reading the data.
  /// [sourceColumnMatch] Specifies how source columns are matched to the table schema. Valid values are POSITION (columns matched by position, assuming same ordering) or NAME (columns matched by name, reads header row and reorders columns to align with schema field names).
  GetTableExternalDataConfigurationCsvOption({
    required this.allowJaggedRows,
    required this.allowQuotedNewlines,
    required this.encoding,
    required this.fieldDelimiter,
    required this.quote,
    required this.skipLeadingRows,
    required this.sourceColumnMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowJaggedRows': allowJaggedRows,
      'allowQuotedNewlines': allowQuotedNewlines,
      'encoding': encoding,
      'fieldDelimiter': fieldDelimiter,
      'quote': quote,
      'skipLeadingRows': skipLeadingRows,
      'sourceColumnMatch': sourceColumnMatch,
    };
  }

  factory GetTableExternalDataConfigurationCsvOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTableExternalDataConfigurationCsvOption(
      allowJaggedRows: pulumi.Input.fromValue(map['allowJaggedRows'] as bool),
      allowQuotedNewlines: pulumi.Input.fromValue(
        map['allowQuotedNewlines'] as bool,
      ),
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
      fieldDelimiter: pulumi.Input.fromValue(map['fieldDelimiter'] as String),
      quote: pulumi.Input.fromValue(map['quote'] as String),
      skipLeadingRows: pulumi.Input.fromValue(map['skipLeadingRows'] as int),
      sourceColumnMatch: pulumi.Input.fromValue(
        map['sourceColumnMatch'] as String,
      ),
    );
  }
}
