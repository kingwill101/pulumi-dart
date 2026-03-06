// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_proximity_response.dart';
import 'google_privacy_dlp_v2_regex_response.dart';

/// The rule to exclude findings based on a hotword. For record inspection of tables, column names are considered hotwords. An example of this is to exclude a finding if it belongs to a BigQuery column that matches a specific pattern.
class GooglePrivacyDlpV2ExcludeByHotwordResponse {
  /// Regular expression pattern defining what qualifies as a hotword.
  final pulumi.Input<GooglePrivacyDlpV2RegexResponse> hotwordRegex;
  /// Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The windowBefore property in proximity should be set to 1 if the hotword needs to be included in a column header.
  final pulumi.Input<GooglePrivacyDlpV2ProximityResponse> proximity;

  /// Creates a new [GooglePrivacyDlpV2ExcludeByHotwordResponse].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [proximity] Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The windowBefore property in proximity should be set to 1 if the hotword needs to be included in a column header.
  const GooglePrivacyDlpV2ExcludeByHotwordResponse({
    required this.hotwordRegex,
    required this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex': pulumi.Input.mapInputValue<GooglePrivacyDlpV2RegexResponse, Map<String, dynamic>>(hotwordRegex, (value) => value.toMap()),
      'proximity': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ProximityResponse, Map<String, dynamic>>(proximity, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ExcludeByHotwordResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ExcludeByHotwordResponse(
      hotwordRegex: pulumi.Input.fromValue(GooglePrivacyDlpV2RegexResponse.fromMap((map['hotwordRegex']! as Map).cast<String, dynamic>())),
      proximity: pulumi.Input.fromValue(GooglePrivacyDlpV2ProximityResponse.fromMap((map['proximity']! as Map).cast<String, dynamic>())),
    );
  }
}

