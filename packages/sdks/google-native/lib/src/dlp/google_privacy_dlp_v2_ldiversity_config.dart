// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id.dart';

/// l-diversity metric, used for analysis of reidentification risk.
class GooglePrivacyDlpV2LDiversityConfig {
  /// Set of quasi-identifiers indicating how equivalence classes are defined for the l-diversity computation. When multiple fields are specified, they are considered a single composite key.
  final pulumi.Input<List<GooglePrivacyDlpV2FieldId>>? quasiIds;
  /// Sensitive field for computing the l-value.
  final pulumi.Input<GooglePrivacyDlpV2FieldId>? sensitiveAttribute;

  /// Creates a new [GooglePrivacyDlpV2LDiversityConfig].
  /// [quasiIds] Set of quasi-identifiers indicating how equivalence classes are defined for the l-diversity computation. When multiple fields are specified, they are considered a single composite key.
  /// [sensitiveAttribute] Sensitive field for computing the l-value.
  GooglePrivacyDlpV2LDiversityConfig({
    this.quasiIds,
    this.sensitiveAttribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quasiIds': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2FieldId>, List<Map<String, dynamic>>>(quasiIds, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sensitiveAttribute': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(sensitiveAttribute, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2LDiversityConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2LDiversityConfig(
      quasiIds: map['quasiIds'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2FieldId>(map['quasiIds'], (value) => GooglePrivacyDlpV2FieldId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sensitiveAttribute: map['sensitiveAttribute'] == null ? null : (GooglePrivacyDlpV2FieldId.fromMap((map['sensitiveAttribute'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

