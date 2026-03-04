// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_ldiversity_histogram_bucket_response.dart';

/// Result of the l-diversity computation.
class GooglePrivacyDlpV2LDiversityResultResponse {
  /// Histogram of l-diversity equivalence class sensitive value frequencies.
  final pulumi.Input<List<GooglePrivacyDlpV2LDiversityHistogramBucketResponse>>
  sensitiveValueFrequencyHistogramBuckets;

  /// Creates a new [GooglePrivacyDlpV2LDiversityResultResponse].
  /// [sensitiveValueFrequencyHistogramBuckets] Histogram of l-diversity equivalence class sensitive value frequencies.
  GooglePrivacyDlpV2LDiversityResultResponse({
    required this.sensitiveValueFrequencyHistogramBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sensitiveValueFrequencyHistogramBuckets':
          pulumi.Input.mapInputValue<
            List<GooglePrivacyDlpV2LDiversityHistogramBucketResponse>,
            List<Map<String, dynamic>>
          >(
            sensitiveValueFrequencyHistogramBuckets,
            (value) =>
                pulumi.Input.encodeList<
                  GooglePrivacyDlpV2LDiversityHistogramBucketResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GooglePrivacyDlpV2LDiversityResultResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2LDiversityResultResponse(
      sensitiveValueFrequencyHistogramBuckets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GooglePrivacyDlpV2LDiversityHistogramBucketResponse
        >(
          map['sensitiveValueFrequencyHistogramBuckets']!,
          (value) =>
              GooglePrivacyDlpV2LDiversityHistogramBucketResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
