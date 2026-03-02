// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Top N non-null values in the scanned data.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse {
  /// Count of the corresponding value in the scanned data.
  final pulumi.Input<String> count;
  /// Ratio of the corresponding value in the field against the total number of rows in the scanned data.
  final pulumi.Input<double> ratio;
  /// String value of a top N non-null value.
  final pulumi.Input<String> value;

  /// Creates a new [GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse].
  /// [count] Count of the corresponding value in the scanned data.
  /// [ratio] Ratio of the corresponding value in the field against the total number of rows in the scanned data.
  /// [value] String value of a top N non-null value.
  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse({
    required this.count,
    required this.ratio,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'ratio': ratio,
      'value': value,
    };
  }

  factory GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse(
      count: (map['count'] as String).input(),
      ratio: (map['ratio'] as double).input(),
      value: (map['value'] as String).input(),
    );
  }
}

