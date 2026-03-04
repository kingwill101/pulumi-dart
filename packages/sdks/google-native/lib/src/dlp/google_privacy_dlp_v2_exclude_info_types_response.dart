// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type_response.dart';

/// List of excluded infoTypes.
class GooglePrivacyDlpV2ExcludeInfoTypesResponse {
  /// InfoType list in ExclusionRule rule drops a finding when it overlaps or contained within with a finding of an infoType from this list. For example, for `InspectionRuleSet.info_types` containing "PHONE_NUMBER"` and `exclusion_rule` containing `exclude_info_types.info_types` with "EMAIL_ADDRESS" the phone number findings are dropped if they overlap with EMAIL_ADDRESS finding. That leads to "555-222-2222@example.org" to generate only a single finding, namely email address.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoTypeResponse>> infoTypes;

  /// Creates a new [GooglePrivacyDlpV2ExcludeInfoTypesResponse].
  /// [infoTypes] InfoType list in ExclusionRule rule drops a finding when it overlaps or contained within with a finding of an infoType from this list. For example, for `InspectionRuleSet.info_types` containing "PHONE_NUMBER"` and `exclusion_rule` containing `exclude_info_types.info_types` with "EMAIL_ADDRESS" the phone number findings are dropped if they overlap with EMAIL_ADDRESS finding. That leads to "555-222-2222@example.org" to generate only a single finding, namely email address.
  GooglePrivacyDlpV2ExcludeInfoTypesResponse({required this.infoTypes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes':
          pulumi.Input.mapInputValue<
            List<GooglePrivacyDlpV2InfoTypeResponse>,
            List<Map<String, dynamic>>
          >(
            infoTypes,
            (value) =>
                pulumi.Input.encodeList<
                  GooglePrivacyDlpV2InfoTypeResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GooglePrivacyDlpV2ExcludeInfoTypesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2ExcludeInfoTypesResponse(
      infoTypes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeResponse>(
          map['infoTypes']!,
          (value) => GooglePrivacyDlpV2InfoTypeResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
