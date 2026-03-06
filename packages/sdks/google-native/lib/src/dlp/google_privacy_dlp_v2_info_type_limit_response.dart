// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type_response.dart';

/// Max findings configuration per infoType, per content item or long running DlpJob.
class GooglePrivacyDlpV2InfoTypeLimitResponse {
  /// Type of information the findings limit applies to. Only one limit per info_type should be provided. If InfoTypeLimit does not have an info_type, the DLP API applies the limit against all info_types that are found but not specified in another InfoTypeLimit.
  final pulumi.Input<GooglePrivacyDlpV2InfoTypeResponse> infoType;
  /// Max findings limit for the given infoType.
  final pulumi.Input<int> maxFindings;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeLimitResponse].
  /// [infoType] Type of information the findings limit applies to. Only one limit per info_type should be provided. If InfoTypeLimit does not have an info_type, the DLP API applies the limit against all info_types that are found but not specified in another InfoTypeLimit.
  /// [maxFindings] Max findings limit for the given infoType.
  const GooglePrivacyDlpV2InfoTypeLimitResponse({
    required this.infoType,
    required this.maxFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoType': pulumi.Input.mapInputValue<GooglePrivacyDlpV2InfoTypeResponse, Map<String, dynamic>>(infoType, (value) => value.toMap()),
      'maxFindings': maxFindings,
    };
  }

  factory GooglePrivacyDlpV2InfoTypeLimitResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeLimitResponse(
      infoType: pulumi.Input.fromValue(GooglePrivacyDlpV2InfoTypeResponse.fromMap((map['infoType']! as Map).cast<String, dynamic>())),
      maxFindings: pulumi.Input.fromValue(map['maxFindings'] as int),
    );
  }
}

