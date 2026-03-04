// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_kanonymity_histogram_bucket_response.dart';

/// Result of the k-anonymity computation.
class GooglePrivacyDlpV2KAnonymityResultResponse {
  /// Histogram of k-anonymity equivalence classes.
  final pulumi.Input<List<GooglePrivacyDlpV2KAnonymityHistogramBucketResponse>>
  equivalenceClassHistogramBuckets;

  /// Creates a new [GooglePrivacyDlpV2KAnonymityResultResponse].
  /// [equivalenceClassHistogramBuckets] Histogram of k-anonymity equivalence classes.
  GooglePrivacyDlpV2KAnonymityResultResponse({
    required this.equivalenceClassHistogramBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'equivalenceClassHistogramBuckets':
          pulumi.Input.mapInputValue<
            List<GooglePrivacyDlpV2KAnonymityHistogramBucketResponse>,
            List<Map<String, dynamic>>
          >(
            equivalenceClassHistogramBuckets,
            (value) =>
                pulumi.Input.encodeList<
                  GooglePrivacyDlpV2KAnonymityHistogramBucketResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GooglePrivacyDlpV2KAnonymityResultResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2KAnonymityResultResponse(
      equivalenceClassHistogramBuckets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GooglePrivacyDlpV2KAnonymityHistogramBucketResponse
        >(
          map['equivalenceClassHistogramBuckets']!,
          (value) =>
              GooglePrivacyDlpV2KAnonymityHistogramBucketResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
