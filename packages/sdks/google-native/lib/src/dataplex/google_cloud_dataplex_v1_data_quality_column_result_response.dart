// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataQualityColumnResult provides a more detailed, per-column view of the results.
class GoogleCloudDataplexV1DataQualityColumnResultResponse {
  /// The column specified in the DataQualityRule.
  final pulumi.Input<String> column;
  /// The column-level data quality score for this data scan job if and only if the 'column' field is set.The score ranges between between 0, 100 (up to two decimal points).
  final pulumi.Input<double> score;

  /// Creates a new [GoogleCloudDataplexV1DataQualityColumnResultResponse].
  /// [column] The column specified in the DataQualityRule.
  /// [score] The column-level data quality score for this data scan job if and only if the 'column' field is set.The score ranges between between 0, 100 (up to two decimal points).
  const GoogleCloudDataplexV1DataQualityColumnResultResponse({
    required this.column,
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'score': score,
    };
  }

  factory GoogleCloudDataplexV1DataQualityColumnResultResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityColumnResultResponse(
      column: pulumi.Input.fromValue(map['column'] as String),
      score: pulumi.Input.fromValue(map['score'] as double),
    );
  }
}

