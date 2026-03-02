// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_sensitivity_score_response.dart';

/// Type of information detected by the API.
class GooglePrivacyDlpV2InfoTypeResponse {
  /// Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern `[A-Za-z0-9$_-]{1,64}`.
  final pulumi.Input<String> name;
  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  final pulumi.Input<GooglePrivacyDlpV2SensitivityScoreResponse> sensitivityScore;
  /// Optional version name for this InfoType.
  final pulumi.Input<String> version;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeResponse].
  /// [name] Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern `[A-Za-z0-9$_-]{1,64}`.
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [version] Optional version name for this InfoType.
  GooglePrivacyDlpV2InfoTypeResponse({
    required this.name,
    required this.sensitivityScore,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sensitivityScore': pulumi.Input.mapInputValue<GooglePrivacyDlpV2SensitivityScoreResponse, Map<String, dynamic>>(sensitivityScore, (value) => value.toMap()),
      'version': version,
    };
  }

  factory GooglePrivacyDlpV2InfoTypeResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeResponse(
      name: (map['name'] as String).input(),
      sensitivityScore: (GooglePrivacyDlpV2SensitivityScoreResponse.fromMap((map['sensitivityScore'] as Map).cast<String, dynamic>())).input(),
      version: (map['version'] as String).input(),
    );
  }
}

