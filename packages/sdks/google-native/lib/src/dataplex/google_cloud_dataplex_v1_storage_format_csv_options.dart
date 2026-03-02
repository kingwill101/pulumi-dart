// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes CSV and similar semi-structured data formats.
class GoogleCloudDataplexV1StorageFormatCsvOptions {
  /// Optional. The delimiter used to separate values. Defaults to ','.
  final pulumi.Input<String>? delimiter;
  /// Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8", and "ISO-8859-1". Defaults to UTF-8 if unspecified.
  final pulumi.Input<String>? encoding;
  /// Optional. The number of rows to interpret as header rows that should be skipped when reading data rows. Defaults to 0.
  final pulumi.Input<int>? headerRows;
  /// Optional. The character used to quote column values. Accepts '"' (double quotation mark) or ''' (single quotation mark). Defaults to '"' (double quotation mark) if unspecified.
  final pulumi.Input<String>? quote;

  /// Creates a new [GoogleCloudDataplexV1StorageFormatCsvOptions].
  /// [delimiter] Optional. The delimiter used to separate values. Defaults to ','.
  /// [encoding] Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8", and "ISO-8859-1". Defaults to UTF-8 if unspecified.
  /// [headerRows] Optional. The number of rows to interpret as header rows that should be skipped when reading data rows. Defaults to 0.
  /// [quote] Optional. The character used to quote column values. Accepts '"' (double quotation mark) or ''' (single quotation mark). Defaults to '"' (double quotation mark) if unspecified.
  GoogleCloudDataplexV1StorageFormatCsvOptions({
    this.delimiter,
    this.encoding,
    this.headerRows,
    this.quote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': ?delimiter,
      'encoding': ?encoding,
      'headerRows': ?headerRows,
      'quote': ?quote,
    };
  }

  factory GoogleCloudDataplexV1StorageFormatCsvOptions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1StorageFormatCsvOptions(
      delimiter: map['delimiter'] == null ? null : (map['delimiter'] as String).input(),
      encoding: map['encoding'] == null ? null : (map['encoding'] as String).input(),
      headerRows: map['headerRows'] == null ? null : (map['headerRows'] as int).input(),
      quote: map['quote'] == null ? null : (map['quote'] as String).input(),
    );
  }
}

