// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value_response.dart';

/// Bucket is represented as a range, along with replacement values.
class GooglePrivacyDlpV2BucketResponse {
  /// Upper bound of the range, exclusive; type must match min.
  final pulumi.Input<GooglePrivacyDlpV2ValueResponse> max;
  /// Lower bound of the range, inclusive. Type should be the same as max if used.
  final pulumi.Input<GooglePrivacyDlpV2ValueResponse> min;
  /// Replacement value for this bucket.
  final pulumi.Input<GooglePrivacyDlpV2ValueResponse> replacementValue;

  /// Creates a new [GooglePrivacyDlpV2BucketResponse].
  /// [max] Upper bound of the range, exclusive; type must match min.
  /// [min] Lower bound of the range, inclusive. Type should be the same as max if used.
  /// [replacementValue] Replacement value for this bucket.
  GooglePrivacyDlpV2BucketResponse({
    required this.max,
    required this.min,
    required this.replacementValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ValueResponse, Map<String, dynamic>>(max, (value) => value.toMap()),
      'min': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ValueResponse, Map<String, dynamic>>(min, (value) => value.toMap()),
      'replacementValue': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ValueResponse, Map<String, dynamic>>(replacementValue, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2BucketResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BucketResponse(
      max: pulumi.Input.fromValue(GooglePrivacyDlpV2ValueResponse.fromMap((map['max']! as Map).cast<String, dynamic>())),
      min: pulumi.Input.fromValue(GooglePrivacyDlpV2ValueResponse.fromMap((map['min']! as Map).cast<String, dynamic>())),
      replacementValue: pulumi.Input.fromValue(GooglePrivacyDlpV2ValueResponse.fromMap((map['replacementValue']! as Map).cast<String, dynamic>())),
    );
  }
}

