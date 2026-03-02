// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_condition.dart';

/// A collection of conditions.
class GooglePrivacyDlpV2Conditions {
  /// A collection of conditions.
  final pulumi.Input<List<GooglePrivacyDlpV2Condition>>? conditions;

  /// Creates a new [GooglePrivacyDlpV2Conditions].
  /// [conditions] A collection of conditions.
  GooglePrivacyDlpV2Conditions({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2Conditions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Conditions(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2Condition>(map['conditions']!, (value) => GooglePrivacyDlpV2Condition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

