// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_ldiversity_equivalence_class_response.dart';

/// Histogram of l-diversity equivalence class sensitive value frequencies.
class GooglePrivacyDlpV2LDiversityHistogramBucketResponse {
  /// Total number of equivalence classes in this bucket.
  final String bucketSize;
  /// Total number of distinct equivalence classes in this bucket.
  final String bucketValueCount;
  /// Sample of equivalence classes in this bucket. The total number of classes returned per bucket is capped at 20.
  final List<GooglePrivacyDlpV2LDiversityEquivalenceClassResponse> bucketValues;
  /// Lower bound on the sensitive value frequencies of the equivalence classes in this bucket.
  final String sensitiveValueFrequencyLowerBound;
  /// Upper bound on the sensitive value frequencies of the equivalence classes in this bucket.
  final String sensitiveValueFrequencyUpperBound;

  /// Creates a new [GooglePrivacyDlpV2LDiversityHistogramBucketResponse].
  /// [bucketSize] Total number of equivalence classes in this bucket.
  /// [bucketValueCount] Total number of distinct equivalence classes in this bucket.
  /// [bucketValues] Sample of equivalence classes in this bucket. The total number of classes returned per bucket is capped at 20.
  /// [sensitiveValueFrequencyLowerBound] Lower bound on the sensitive value frequencies of the equivalence classes in this bucket.
  /// [sensitiveValueFrequencyUpperBound] Upper bound on the sensitive value frequencies of the equivalence classes in this bucket.
  GooglePrivacyDlpV2LDiversityHistogramBucketResponse({
    required this.bucketSize,
    required this.bucketValueCount,
    required this.bucketValues,
    required this.sensitiveValueFrequencyLowerBound,
    required this.sensitiveValueFrequencyUpperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketSize': bucketSize,
      'bucketValueCount': bucketValueCount,
      'bucketValues': pulumi.Input.encodeList<GooglePrivacyDlpV2LDiversityEquivalenceClassResponse, Map<String, dynamic>>(bucketValues, (value) => value.toMap()),
      'sensitiveValueFrequencyLowerBound': sensitiveValueFrequencyLowerBound,
      'sensitiveValueFrequencyUpperBound': sensitiveValueFrequencyUpperBound,
    };
  }

  factory GooglePrivacyDlpV2LDiversityHistogramBucketResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2LDiversityHistogramBucketResponse(
      bucketSize: map['bucketSize'] as String,
      bucketValueCount: map['bucketValueCount'] as String,
      bucketValues: pulumi.Input.decodeList<GooglePrivacyDlpV2LDiversityEquivalenceClassResponse>(map['bucketValues'], (value) => GooglePrivacyDlpV2LDiversityEquivalenceClassResponse.fromMap((value as Map).cast<String, dynamic>())),
      sensitiveValueFrequencyLowerBound: map['sensitiveValueFrequencyLowerBound'] as String,
      sensitiveValueFrequencyUpperBound: map['sensitiveValueFrequencyUpperBound'] as String,
    );
  }
}

