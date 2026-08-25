// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableExternalDataConfigurationCsvOptions {
  /// Indicates if BigQuery should accept rows
  /// that are missing trailing optional columns.
  final pulumi.Input<bool?>? allowJaggedRows;
  /// Indicates if BigQuery should allow
  /// quoted data sections that contain newline characters in a CSV file.
  /// The default value is false.
  final pulumi.Input<bool?>? allowQuotedNewlines;
  /// The character encoding of the data. The supported
  /// values are UTF-8 or ISO-8859-1.
  final pulumi.Input<String?>? encoding;
  /// The separator for fields in a CSV file.
  final pulumi.Input<String?>? fieldDelimiter;
  /// The value that is used to quote data sections in a
  /// CSV file. If your data does not contain quoted sections, set the
  /// property value to an empty string. If your data contains quoted newline
  /// characters, you must also set the `allowQuotedNewlines` property to true.
  /// The API-side default is `"`, specified in the provider escaped as `\"`. Due to
  /// limitations with default values, this value is required to be
  /// explicitly set.
  final pulumi.Input<String> quote;
  /// The number of rows at the top of a CSV
  /// file that BigQuery will skip when reading the data.
  final pulumi.Input<int?>? skipLeadingRows;
  /// Specifies how source columns are matched
  /// to the table schema. Valid values are `POSITION` (columns matched by position,
  /// assuming same ordering as the schema) or `NAME` (columns matched by name,
  /// reads the header row and reorders columns to align with schema field names).
  /// If not set, a default is chosen based on how the schema is provided: when
  /// autodetect is used, columns are matched by name; otherwise, by position.
  final pulumi.Input<String?>? sourceColumnMatch;

  /// Creates a new [TableExternalDataConfigurationCsvOptions].
  /// [allowJaggedRows] Indicates if BigQuery should accept rows
  /// [allowQuotedNewlines] Indicates if BigQuery should allow
  /// [encoding] The character encoding of the data. The supported
  /// [fieldDelimiter] The separator for fields in a CSV file.
  /// [quote] The value that is used to quote data sections in a
  /// [skipLeadingRows] The number of rows at the top of a CSV
  /// [sourceColumnMatch] Specifies how source columns are matched
  const TableExternalDataConfigurationCsvOptions({
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
      allowJaggedRows: (() { final guardedValue = map['allowJaggedRows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowQuotedNewlines: (() { final guardedValue = map['allowQuotedNewlines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldDelimiter: (() { final guardedValue = map['fieldDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quote: pulumi.Input.fromValue(map['quote'] as String),
      skipLeadingRows: (() { final guardedValue = map['skipLeadingRows']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sourceColumnMatch: (() { final guardedValue = map['sourceColumnMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
