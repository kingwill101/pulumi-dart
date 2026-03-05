// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_kanonymity_equivalence_class_response.dart';

/// Histogram of k-anonymity equivalence classes.
class GooglePrivacyDlpV2KAnonymityHistogramBucketResponse {
  /// Total number of equivalence classes in this bucket.
  final pulumi.Input<String> bucketSize;
  /// Total number of distinct equivalence classes in this bucket.
  final pulumi.Input<String> bucketValueCount;
  /// Sample of equivalence classes in this bucket. The total number of classes returned per bucket is capped at 20.
  final pulumi.Input<List<GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse>> bucketValues;
  /// Lower bound on the size of the equivalence classes in this bucket.
  final pulumi.Input<String> equivalenceClassSizeLowerBound;
  /// Upper bound on the size of the equivalence classes in this bucket.
  final pulumi.Input<String> equivalenceClassSizeUpperBound;

  /// Creates a new [GooglePrivacyDlpV2KAnonymityHistogramBucketResponse].
  /// [bucketSize] Total number of equivalence classes in this bucket.
  /// [bucketValueCount] Total number of distinct equivalence classes in this bucket.
  /// [bucketValues] Sample of equivalence classes in this bucket. The total number of classes returned per bucket is capped at 20.
  /// [equivalenceClassSizeLowerBound] Lower bound on the size of the equivalence classes in this bucket.
  /// [equivalenceClassSizeUpperBound] Upper bound on the size of the equivalence classes in this bucket.
  GooglePrivacyDlpV2KAnonymityHistogramBucketResponse({
    required this.bucketSize,
    required this.bucketValueCount,
    required this.bucketValues,
    required this.equivalenceClassSizeLowerBound,
    required this.equivalenceClassSizeUpperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketSize': bucketSize,
      'bucketValueCount': bucketValueCount,
      'bucketValues': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse>, List<Map<String, dynamic>>>(bucketValues, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'equivalenceClassSizeLowerBound': equivalenceClassSizeLowerBound,
      'equivalenceClassSizeUpperBound': equivalenceClassSizeUpperBound,
    };
  }

  factory GooglePrivacyDlpV2KAnonymityHistogramBucketResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KAnonymityHistogramBucketResponse(
      bucketSize: pulumi.Input.fromValue(map['bucketSize'] as String),
      bucketValueCount: pulumi.Input.fromValue(map['bucketValueCount'] as String),
      bucketValues: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse>(map['bucketValues']!, (value) => GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse.fromMap((value as Map).cast<String, dynamic>()))),
      equivalenceClassSizeLowerBound: pulumi.Input.fromValue(map['equivalenceClassSizeLowerBound'] as String),
      equivalenceClassSizeUpperBound: pulumi.Input.fromValue(map['equivalenceClassSizeUpperBound'] as String),
    );
  }
}

