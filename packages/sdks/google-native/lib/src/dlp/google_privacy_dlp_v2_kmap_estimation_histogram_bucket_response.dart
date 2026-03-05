// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_kmap_estimation_quasi_id_values_response.dart';

/// A KMapEstimationHistogramBucket message with the following values: min_anonymity: 3 max_anonymity: 5 frequency: 42 means that there are 42 records whose quasi-identifier values correspond to 3, 4 or 5 people in the overlying population. An important particular case is when min_anonymity = max_anonymity = 1: the frequency field then corresponds to the number of uniquely identifiable records.
class GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse {
  /// Number of records within these anonymity bounds.
  final pulumi.Input<String> bucketSize;
  /// Total number of distinct quasi-identifier tuple values in this bucket.
  final pulumi.Input<String> bucketValueCount;
  /// Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per bucket is capped at 20.
  final pulumi.Input<List<GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse>> bucketValues;
  /// Always greater than or equal to min_anonymity.
  final pulumi.Input<String> maxAnonymity;
  /// Always positive.
  final pulumi.Input<String> minAnonymity;

  /// Creates a new [GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse].
  /// [bucketSize] Number of records within these anonymity bounds.
  /// [bucketValueCount] Total number of distinct quasi-identifier tuple values in this bucket.
  /// [bucketValues] Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per bucket is capped at 20.
  /// [maxAnonymity] Always greater than or equal to min_anonymity.
  /// [minAnonymity] Always positive.
  GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse({
    required this.bucketSize,
    required this.bucketValueCount,
    required this.bucketValues,
    required this.maxAnonymity,
    required this.minAnonymity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketSize': bucketSize,
      'bucketValueCount': bucketValueCount,
      'bucketValues': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse>, List<Map<String, dynamic>>>(bucketValues, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxAnonymity': maxAnonymity,
      'minAnonymity': minAnonymity,
    };
  }

  factory GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse(
      bucketSize: pulumi.Input.fromValue(map['bucketSize'] as String),
      bucketValueCount: pulumi.Input.fromValue(map['bucketValueCount'] as String),
      bucketValues: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse>(map['bucketValues']!, (value) => GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse.fromMap((value as Map).cast<String, dynamic>()))),
      maxAnonymity: pulumi.Input.fromValue(map['maxAnonymity'] as String),
      minAnonymity: pulumi.Input.fromValue(map['minAnonymity'] as String),
    );
  }
}

