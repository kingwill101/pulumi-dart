// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type_response.dart';

/// Statistics regarding a specific InfoType.
class GooglePrivacyDlpV2InfoTypeStatsResponse {
  /// Number of findings for this infoType.
  final pulumi.Input<String> count;
  /// The type of finding this stat is for.
  final pulumi.Input<GooglePrivacyDlpV2InfoTypeResponse> infoType;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeStatsResponse].
  /// [count] Number of findings for this infoType.
  /// [infoType] The type of finding this stat is for.
  const GooglePrivacyDlpV2InfoTypeStatsResponse({
    required this.count,
    required this.infoType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'infoType': pulumi.Input.mapInputValue<GooglePrivacyDlpV2InfoTypeResponse, Map<String, dynamic>>(infoType, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2InfoTypeStatsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeStatsResponse(
      count: pulumi.Input.fromValue(map['count'] as String),
      infoType: pulumi.Input.fromValue(GooglePrivacyDlpV2InfoTypeResponse.fromMap((map['infoType']! as Map).cast<String, dynamic>())),
    );
  }
}

