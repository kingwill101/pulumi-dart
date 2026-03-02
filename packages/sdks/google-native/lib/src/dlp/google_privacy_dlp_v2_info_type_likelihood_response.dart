// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type_response.dart';

/// Configuration for setting a minimum likelihood per infotype. Used to customize the minimum likelihood level for specific infotypes in the request. For example, use this if you want to lower the precision for PERSON_NAME without lowering the precision for the other infotypes in the request.
class GooglePrivacyDlpV2InfoTypeLikelihoodResponse {
  /// Type of information the likelihood threshold applies to. Only one likelihood per info_type should be provided. If InfoTypeLikelihood does not have an info_type, the configuration fails.
  final pulumi.Input<GooglePrivacyDlpV2InfoTypeResponse> infoType;
  /// Only returns findings equal to or above this threshold. This field is required or else the configuration fails.
  final pulumi.Input<String> minLikelihood;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeLikelihoodResponse].
  /// [infoType] Type of information the likelihood threshold applies to. Only one likelihood per info_type should be provided. If InfoTypeLikelihood does not have an info_type, the configuration fails.
  /// [minLikelihood] Only returns findings equal to or above this threshold. This field is required or else the configuration fails.
  GooglePrivacyDlpV2InfoTypeLikelihoodResponse({
    required this.infoType,
    required this.minLikelihood,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoType': pulumi.Input.mapInputValue<GooglePrivacyDlpV2InfoTypeResponse, Map<String, dynamic>>(infoType, (value) => value.toMap()),
      'minLikelihood': minLikelihood,
    };
  }

  factory GooglePrivacyDlpV2InfoTypeLikelihoodResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeLikelihoodResponse(
      infoType: (GooglePrivacyDlpV2InfoTypeResponse.fromMap((map['infoType'] as Map).cast<String, dynamic>())).input(),
      minLikelihood: (map['minLikelihood'] as String).input(),
    );
  }
}

