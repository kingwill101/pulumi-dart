// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CsvOptionsResponse {
  /// [Optional] Indicates if BigQuery should accept rows that are missing trailing optional columns. If true, BigQuery treats missing trailing columns as null values. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false.
  final pulumi.Input<bool> allowJaggedRows;

  /// [Optional] Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  final pulumi.Input<bool> allowQuotedNewlines;

  /// [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.
  final pulumi.Input<String> encoding;

  /// [Optional] The separator for fields in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence "\t" to specify a tab separator. The default value is a comma (',').
  final pulumi.Input<String> fieldDelimiter;

  /// [Optional] An custom string that will represent a NULL value in CSV import data.
  final pulumi.Input<String> nullMarker;

  /// [Optional] Preserves the embedded ASCII control characters (the first 32 characters in the ASCII-table, from '\x00' to '\x1F') when loading from CSV. Only applicable to CSV, ignored for other formats.
  final pulumi.Input<bool> preserveAsciiControlCharacters;

  /// [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
  final pulumi.Input<String> quote;

  /// [Optional] The number of rows at the top of a CSV file that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. When autodetect is on, the behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N &gt; 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema.
  final pulumi.Input<String> skipLeadingRows;

  /// Creates a new [CsvOptionsResponse].
  /// [allowJaggedRows] [Optional] Indicates if BigQuery should accept rows that are missing trailing optional columns. If true, BigQuery treats missing trailing columns as null values. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false.
  /// [allowQuotedNewlines] [Optional] Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  /// [encoding] [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.
  /// [fieldDelimiter] [Optional] The separator for fields in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence "\t" to specify a tab separator. The default value is a comma (',').
  /// [nullMarker] [Optional] An custom string that will represent a NULL value in CSV import data.
  /// [preserveAsciiControlCharacters] [Optional] Preserves the embedded ASCII control characters (the first 32 characters in the ASCII-table, from '\x00' to '\x1F') when loading from CSV. Only applicable to CSV, ignored for other formats.
  /// [quote] [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
  /// [skipLeadingRows] [Optional] The number of rows at the top of a CSV file that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. When autodetect is on, the behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N &gt; 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema.
  CsvOptionsResponse({
    required this.allowJaggedRows,
    required this.allowQuotedNewlines,
    required this.encoding,
    required this.fieldDelimiter,
    required this.nullMarker,
    required this.preserveAsciiControlCharacters,
    required this.quote,
    required this.skipLeadingRows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowJaggedRows': allowJaggedRows,
      'allowQuotedNewlines': allowQuotedNewlines,
      'encoding': encoding,
      'fieldDelimiter': fieldDelimiter,
      'nullMarker': nullMarker,
      'preserveAsciiControlCharacters': preserveAsciiControlCharacters,
      'quote': quote,
      'skipLeadingRows': skipLeadingRows,
    };
  }

  factory CsvOptionsResponse.fromMap(Map<String, dynamic> map) {
    return CsvOptionsResponse(
      allowJaggedRows: pulumi.Input.fromValue(map['allowJaggedRows'] as bool),
      allowQuotedNewlines: pulumi.Input.fromValue(
        map['allowQuotedNewlines'] as bool,
      ),
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
      fieldDelimiter: pulumi.Input.fromValue(map['fieldDelimiter'] as String),
      nullMarker: pulumi.Input.fromValue(map['nullMarker'] as String),
      preserveAsciiControlCharacters: pulumi.Input.fromValue(
        map['preserveAsciiControlCharacters'] as bool,
      ),
      quote: pulumi.Input.fromValue(map['quote'] as String),
      skipLeadingRows: pulumi.Input.fromValue(map['skipLeadingRows'] as String),
    );
  }
}
