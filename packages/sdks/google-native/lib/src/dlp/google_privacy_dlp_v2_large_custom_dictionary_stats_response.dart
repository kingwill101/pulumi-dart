// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Summary statistics of a custom dictionary.
class GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse {
  /// Approximate number of distinct phrases in the dictionary.
  final pulumi.Input<String> approxNumPhrases;

  /// Creates a new [GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse].
  /// [approxNumPhrases] Approximate number of distinct phrases in the dictionary.
  GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse({
    required this.approxNumPhrases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approxNumPhrases': approxNumPhrases,
    };
  }

  factory GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse(
      approxNumPhrases: pulumi.Input.fromValue(map['approxNumPhrases'] as String),
    );
  }
}

