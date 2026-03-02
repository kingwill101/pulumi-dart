// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableExternalDataConfigurationCsvOptions {
  /// Indicates if BigQuery should accept rows
  /// that are missing trailing optional columns.
  final pulumi.Input<bool>? allowJaggedRows;
  /// Indicates if BigQuery should allow
  /// quoted data sections that contain newline characters in a CSV file.
  /// The default value is false.
  final pulumi.Input<bool>? allowQuotedNewlines;
  /// The character encoding of the data. The supported
  /// values are UTF-8 or ISO-8859-1.
  final pulumi.Input<String>? encoding;
  /// The separator for fields in a CSV file.
  final pulumi.Input<String>? fieldDelimiter;
  /// The value that is used to quote data sections in a
  /// CSV file. If your data does not contain quoted sections, set the
  /// property value to an empty string. If your data contains quoted newline
  /// characters, you must also set the `allow_quoted_newlines` property to true.
  /// The API-side default is `"`, specified in the provider escaped as `\"`. Due to
  /// limitations with default values, this value is required to be
  /// explicitly set.
  final pulumi.Input<String> quote;
  /// The number of rows at the top of a CSV
  /// file that BigQuery will skip when reading the data.
  final pulumi.Input<int>? skipLeadingRows;
  /// Specifies how source columns are matched
  /// to the table schema. Valid values are `POSITION` (columns matched by position,
  /// assuming same ordering as the schema) or `NAME` (columns matched by name,
  /// reads the header row and reorders columns to align with schema field names).
  /// If not set, a default is chosen based on how the schema is provided: when
  /// autodetect is used, columns are matched by name; otherwise, by position.
  final pulumi.Input<String>? sourceColumnMatch;

  /// Creates a new [TableExternalDataConfigurationCsvOptions].
  /// [allowJaggedRows] Indicates if BigQuery should accept rows
  /// [allowQuotedNewlines] Indicates if BigQuery should allow
  /// [encoding] The character encoding of the data. The supported
  /// [fieldDelimiter] The separator for fields in a CSV file.
  /// [quote] The value that is used to quote data sections in a
  /// [skipLeadingRows] The number of rows at the top of a CSV
  /// [sourceColumnMatch] Specifies how source columns are matched
  TableExternalDataConfigurationCsvOptions({
    this.allowJaggedRows,
    this.allowQuotedNewlines,
    this.encoding,
    this.fieldDelimiter,
    required this.quote,
    this.skipLeadingRows,
    this.sourceColumnMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowJaggedRows': ?allowJaggedRows,
      'allowQuotedNewlines': ?allowQuotedNewlines,
      'encoding': ?encoding,
      'fieldDelimiter': ?fieldDelimiter,
      'quote': quote,
      'skipLeadingRows': ?skipLeadingRows,
      'sourceColumnMatch': ?sourceColumnMatch,
    };
  }

  factory TableExternalDataConfigurationCsvOptions.fromMap(Map<String, dynamic> map) {
    return TableExternalDataConfigurationCsvOptions(
      allowJaggedRows: map['allowJaggedRows'] == null ? null : (map['allowJaggedRows']! as bool).input(),
      allowQuotedNewlines: map['allowQuotedNewlines'] == null ? null : (map['allowQuotedNewlines']! as bool).input(),
      encoding: map['encoding'] == null ? null : (map['encoding']! as String).input(),
      fieldDelimiter: map['fieldDelimiter'] == null ? null : (map['fieldDelimiter']! as String).input(),
      quote: (map['quote'] as String).input(),
      skipLeadingRows: map['skipLeadingRows'] == null ? null : (map['skipLeadingRows']! as int).input(),
      sourceColumnMatch: map['sourceColumnMatch'] == null ? null : (map['sourceColumnMatch']! as String).input(),
    );
  }
}

