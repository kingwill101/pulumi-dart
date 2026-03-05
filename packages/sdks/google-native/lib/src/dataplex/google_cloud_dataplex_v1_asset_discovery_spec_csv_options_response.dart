// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe CSV and similar semi-structured data formats.
class GoogleCloudDataplexV1AssetDiscoverySpecCsvOptionsResponse {
  /// Optional. The delimiter being used to separate values. This defaults to ','.
  final pulumi.Input<String> delimiter;
  /// Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings.
  final pulumi.Input<bool> disableTypeInference;
  /// Optional. The character encoding of the data. The default is UTF-8.
  final pulumi.Input<String> encoding;
  /// Optional. The number of rows to interpret as header rows that should be skipped when reading data rows.
  final pulumi.Input<int> headerRows;

  /// Creates a new [GoogleCloudDataplexV1AssetDiscoverySpecCsvOptionsResponse].
  /// [delimiter] Optional. The delimiter being used to separate values. This defaults to ','.
  /// [disableTypeInference] Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings.
  /// [encoding] Optional. The character encoding of the data. The default is UTF-8.
  /// [headerRows] Optional. The number of rows to interpret as header rows that should be skipped when reading data rows.
  GoogleCloudDataplexV1AssetDiscoverySpecCsvOptionsResponse({
    required this.delimiter,
    required this.disableTypeInference,
    required this.encoding,
    required this.headerRows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': delimiter,
      'disableTypeInference': disableTypeInference,
      'encoding': encoding,
      'headerRows': headerRows,
    };
  }

  factory GoogleCloudDataplexV1AssetDiscoverySpecCsvOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetDiscoverySpecCsvOptionsResponse(
      delimiter: pulumi.Input.fromValue(map['delimiter'] as String),
      disableTypeInference: pulumi.Input.fromValue(map['disableTypeInference'] as bool),
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
      headerRows: pulumi.Input.fromValue(map['headerRows'] as int),
    );
  }
}

