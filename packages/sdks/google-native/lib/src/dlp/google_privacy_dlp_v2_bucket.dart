// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value.dart';

/// Bucket is represented as a range, along with replacement values.
class GooglePrivacyDlpV2Bucket {
  /// Upper bound of the range, exclusive; type must match min.
  final pulumi.Input<GooglePrivacyDlpV2Value>? max;
  /// Lower bound of the range, inclusive. Type should be the same as max if used.
  final pulumi.Input<GooglePrivacyDlpV2Value>? min;
  /// Replacement value for this bucket.
  final pulumi.Input<GooglePrivacyDlpV2Value> replacementValue;

  /// Creates a new [GooglePrivacyDlpV2Bucket].
  /// [max] Upper bound of the range, exclusive; type must match min.
  /// [min] Lower bound of the range, inclusive. Type should be the same as max if used.
  /// [replacementValue] Replacement value for this bucket.
  GooglePrivacyDlpV2Bucket({
    this.max,
    this.min,
    required this.replacementValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Value, Map<String, dynamic>>(max, (value) => value.toMap()),
      'min': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Value, Map<String, dynamic>>(min, (value) => value.toMap()),
      'replacementValue': pulumi.Input.mapInputValue<GooglePrivacyDlpV2Value, Map<String, dynamic>>(replacementValue, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2Bucket.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Bucket(
      max: map['max'] == null ? null : (GooglePrivacyDlpV2Value.fromMap((map['max'] as Map).cast<String, dynamic>())).input(),
      min: map['min'] == null ? null : (GooglePrivacyDlpV2Value.fromMap((map['min'] as Map).cast<String, dynamic>())).input(),
      replacementValue: (GooglePrivacyDlpV2Value.fromMap((map['replacementValue'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

