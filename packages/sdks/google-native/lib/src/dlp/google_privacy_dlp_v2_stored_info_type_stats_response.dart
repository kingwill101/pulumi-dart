// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_large_custom_dictionary_stats_response.dart';

/// Statistics for a StoredInfoType.
class GooglePrivacyDlpV2StoredInfoTypeStatsResponse {
  /// StoredInfoType where findings are defined by a dictionary of phrases.
  final pulumi.Input<GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse> largeCustomDictionary;

  /// Creates a new [GooglePrivacyDlpV2StoredInfoTypeStatsResponse].
  /// [largeCustomDictionary] StoredInfoType where findings are defined by a dictionary of phrases.
  const GooglePrivacyDlpV2StoredInfoTypeStatsResponse({
    required this.largeCustomDictionary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'largeCustomDictionary': pulumi.Input.mapInputValue<GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse, Map<String, dynamic>>(largeCustomDictionary, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2StoredInfoTypeStatsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredInfoTypeStatsResponse(
      largeCustomDictionary: pulumi.Input.fromValue(GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse.fromMap((map['largeCustomDictionary']! as Map).cast<String, dynamic>())),
    );
  }
}
