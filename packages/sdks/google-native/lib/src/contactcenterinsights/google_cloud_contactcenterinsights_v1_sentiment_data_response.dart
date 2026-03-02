// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data for a sentiment annotation.
class GoogleCloudContactcenterinsightsV1SentimentDataResponse {
  /// A non-negative number from 0 to infinity which represents the abolute magnitude of sentiment regardless of score.
  final pulumi.Input<double> magnitude;
  /// The sentiment score between -1.0 (negative) and 1.0 (positive).
  final pulumi.Input<double> score;

  /// Creates a new [GoogleCloudContactcenterinsightsV1SentimentDataResponse].
  /// [magnitude] A non-negative number from 0 to infinity which represents the abolute magnitude of sentiment regardless of score.
  /// [score] The sentiment score between -1.0 (negative) and 1.0 (positive).
  GoogleCloudContactcenterinsightsV1SentimentDataResponse({
    required this.magnitude,
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'magnitude': magnitude,
      'score': score,
    };
  }

  factory GoogleCloudContactcenterinsightsV1SentimentDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1SentimentDataResponse(
      magnitude: (map['magnitude'] as double).input(),
      score: (map['score'] as double).input(),
    );
  }
}

