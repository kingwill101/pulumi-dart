// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_deidentify_data_source_details_response.dart';

/// The results of an Action.
class GooglePrivacyDlpV2ActionDetailsResponse {
  /// Outcome of a de-identification action.
  final pulumi.Input<GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse> deidentifyDetails;

  /// Creates a new [GooglePrivacyDlpV2ActionDetailsResponse].
  /// [deidentifyDetails] Outcome of a de-identification action.
  GooglePrivacyDlpV2ActionDetailsResponse({
    required this.deidentifyDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyDetails': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse, Map<String, dynamic>>(deidentifyDetails, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ActionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ActionDetailsResponse(
      deidentifyDetails: (GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse.fromMap((map['deidentifyDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

