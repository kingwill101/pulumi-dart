// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataDiscoverySpecStorageConfigCsvOptions {
  /// The delimiter that is used to separate values. The default is `,` (comma).
  final pulumi.Input<String>? delimiter;
  /// The character encoding of the data. The default is UTF-8.
  final pulumi.Input<String>? encoding;
  /// The number of rows to interpret as header rows that should be skipped when reading data rows.
  final pulumi.Input<int>? headerRows;
  /// The character used to quote column values. Accepts `"` (double quotation mark) or `'` (single quotation mark). If unspecified, defaults to `"` (double quotation mark).
  final pulumi.Input<String>? quote;
  /// Whether to disable the inference of data types for CSV data. If true, all columns are registered as strings.
  final pulumi.Input<bool>? typeInferenceDisabled;

  /// Creates a new [DatascanDataDiscoverySpecStorageConfigCsvOptions].
  /// [delimiter] The delimiter that is used to separate values. The default is `,` (comma).
  /// [encoding] The character encoding of the data. The default is UTF-8.
  /// [headerRows] The number of rows to interpret as header rows that should be skipped when reading data rows.
  /// [quote] The character used to quote column values. Accepts `"` (double quotation mark) or `'` (single quotation mark). If unspecified, defaults to `"` (double quotation mark).
  /// [typeInferenceDisabled] Whether to disable the inference of data types for CSV data. If true, all columns are registered as strings.
  const DatascanDataDiscoverySpecStorageConfigCsvOptions({
    this.delimiter,
    this.encoding,
    this.headerRows,
    this.quote,
    this.typeInferenceDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': ?delimiter,
      'encoding': ?encoding,
      'headerRows': ?headerRows,
      'quote': ?quote,
      'typeInferenceDisabled': ?typeInferenceDisabled,
    };
  }

  factory DatascanDataDiscoverySpecStorageConfigCsvOptions.fromMap(Map<String, dynamic> map) {
    return DatascanDataDiscoverySpecStorageConfigCsvOptions(
      delimiter: (() { final guardedValue = map['delimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerRows: (() { final guardedValue = map['headerRows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      quote: (() { final guardedValue = map['quote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeInferenceDisabled: (() { final guardedValue = map['typeInferenceDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

