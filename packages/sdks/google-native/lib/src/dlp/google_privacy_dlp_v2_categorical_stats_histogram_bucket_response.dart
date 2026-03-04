// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value_frequency_response.dart';

/// Histogram of value frequencies in the column.
class GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse {
  /// Total number of values in this bucket.
  final pulumi.Input<String> bucketSize;

  /// Total number of distinct values in this bucket.
  final pulumi.Input<String> bucketValueCount;

  /// Sample of value frequencies in this bucket. The total number of values returned per bucket is capped at 20.
  final pulumi.Input<List<GooglePrivacyDlpV2ValueFrequencyResponse>>
  bucketValues;

  /// Lower bound on the value frequency of the values in this bucket.
  final pulumi.Input<String> valueFrequencyLowerBound;

  /// Upper bound on the value frequency of the values in this bucket.
  final pulumi.Input<String> valueFrequencyUpperBound;

  /// Creates a new [GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse].
  /// [bucketSize] Total number of values in this bucket.
  /// [bucketValueCount] Total number of distinct values in this bucket.
  /// [bucketValues] Sample of value frequencies in this bucket. The total number of values returned per bucket is capped at 20.
  /// [valueFrequencyLowerBound] Lower bound on the value frequency of the values in this bucket.
  /// [valueFrequencyUpperBound] Upper bound on the value frequency of the values in this bucket.
  GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse({
    required this.bucketSize,
    required this.bucketValueCount,
    required this.bucketValues,
    required this.valueFrequencyLowerBound,
    required this.valueFrequencyUpperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketSize': bucketSize,
      'bucketValueCount': bucketValueCount,
      'bucketValues':
          pulumi.Input.mapInputValue<
            List<GooglePrivacyDlpV2ValueFrequencyResponse>,
            List<Map<String, dynamic>>
          >(
            bucketValues,
            (value) =>
                pulumi.Input.encodeList<
                  GooglePrivacyDlpV2ValueFrequencyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'valueFrequencyLowerBound': valueFrequencyLowerBound,
      'valueFrequencyUpperBound': valueFrequencyUpperBound,
    };
  }

  factory GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse(
      bucketSize: pulumi.Input.fromValue(map['bucketSize'] as String),
      bucketValueCount: pulumi.Input.fromValue(
        map['bucketValueCount'] as String,
      ),
      bucketValues: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GooglePrivacyDlpV2ValueFrequencyResponse>(
          map['bucketValues']!,
          (value) => GooglePrivacyDlpV2ValueFrequencyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      valueFrequencyLowerBound: pulumi.Input.fromValue(
        map['valueFrequencyLowerBound'] as String,
      ),
      valueFrequencyUpperBound: pulumi.Input.fromValue(
        map['valueFrequencyUpperBound'] as String,
      ),
    );
  }
}
