// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_delta_presence_estimation_quasi_id_values_response.dart';

/// A DeltaPresenceEstimationHistogramBucket message with the following values: min_probability: 0.1 max_probability: 0.2 frequency: 42 means that there are 42 records for which δ is in [0.1, 0.2). An important particular case is when min_probability = max_probability = 1: then, every individual who shares this quasi-identifier combination is in the dataset.
class GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucketResponse {
  /// Number of records within these probability bounds.
  final pulumi.Input<String> bucketSize;

  /// Total number of distinct quasi-identifier tuple values in this bucket.
  final pulumi.Input<String> bucketValueCount;

  /// Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per bucket is capped at 20.
  final pulumi.Input<
    List<GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse>
  >
  bucketValues;

  /// Always greater than or equal to min_probability.
  final pulumi.Input<double> maxProbability;

  /// Between 0 and 1.
  final pulumi.Input<double> minProbability;

  /// Creates a new [GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucketResponse].
  /// [bucketSize] Number of records within these probability bounds.
  /// [bucketValueCount] Total number of distinct quasi-identifier tuple values in this bucket.
  /// [bucketValues] Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per bucket is capped at 20.
  /// [maxProbability] Always greater than or equal to min_probability.
  /// [minProbability] Between 0 and 1.
  GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucketResponse({
    required this.bucketSize,
    required this.bucketValueCount,
    required this.bucketValues,
    required this.maxProbability,
    required this.minProbability,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketSize': bucketSize,
      'bucketValueCount': bucketValueCount,
      'bucketValues':
          pulumi.Input.mapInputValue<
            List<
              GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse
            >,
            List<Map<String, dynamic>>
          >(
            bucketValues,
            (value) =>
                pulumi.Input.encodeList<
                  GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'maxProbability': maxProbability,
      'minProbability': minProbability,
    };
  }

  factory GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucketResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucketResponse(
      bucketSize: pulumi.Input.fromValue(map['bucketSize'] as String),
      bucketValueCount: pulumi.Input.fromValue(
        map['bucketValueCount'] as String,
      ),
      bucketValues: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse
        >(
          map['bucketValues']!,
          (value) =>
              GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValuesResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      maxProbability: pulumi.Input.fromValue(map['maxProbability'] as double),
      minProbability: pulumi.Input.fromValue(map['minProbability'] as double),
    );
  }
}
