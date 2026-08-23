// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id_response.dart';

/// l-diversity metric, used for analysis of reidentification risk.
class GooglePrivacyDlpV2LDiversityConfigResponse {
  /// Set of quasi-identifiers indicating how equivalence classes are defined for the l-diversity computation. When multiple fields are specified, they are considered a single composite key.
  final pulumi.Input<List<GooglePrivacyDlpV2FieldIdResponse>> quasiIds;
  /// Sensitive field for computing the l-value.
  final pulumi.Input<GooglePrivacyDlpV2FieldIdResponse> sensitiveAttribute;

  /// Creates a new [GooglePrivacyDlpV2LDiversityConfigResponse].
  /// [quasiIds] Set of quasi-identifiers indicating how equivalence classes are defined for the l-diversity computation. When multiple fields are specified, they are considered a single composite key.
  /// [sensitiveAttribute] Sensitive field for computing the l-value.
  const GooglePrivacyDlpV2LDiversityConfigResponse({
    required this.quasiIds,
    required this.sensitiveAttribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quasiIds': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2FieldIdResponse>, List<Map<String, dynamic>>>(quasiIds, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sensitiveAttribute': pulumi.Input.mapInputValue<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(sensitiveAttribute, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2LDiversityConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2LDiversityConfigResponse(
      quasiIds: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2FieldIdResponse>(map['quasiIds']!, (value) => GooglePrivacyDlpV2FieldIdResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sensitiveAttribute: pulumi.Input.fromValue(GooglePrivacyDlpV2FieldIdResponse.fromMap((map['sensitiveAttribute']! as Map).cast<String, dynamic>())),
    );
  }
}
