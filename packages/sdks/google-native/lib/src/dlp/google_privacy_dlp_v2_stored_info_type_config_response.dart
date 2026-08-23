// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_dictionary_response.dart';
import 'google_privacy_dlp_v2_large_custom_dictionary_config_response.dart';
import 'google_privacy_dlp_v2_regex_response.dart';

/// Configuration for stored infoTypes. All fields and subfield are provided by the user. For more information, see https://cloud.google.com/dlp/docs/creating-custom-infotypes.
class GooglePrivacyDlpV2StoredInfoTypeConfigResponse {
  /// Description of the StoredInfoType (max 256 characters).
  final pulumi.Input<String> description;
  /// Store dictionary-based CustomInfoType.
  final pulumi.Input<GooglePrivacyDlpV2DictionaryResponse> dictionary;
  /// Display name of the StoredInfoType (max 256 characters).
  final pulumi.Input<String> displayName;
  /// StoredInfoType where findings are defined by a dictionary of phrases.
  final pulumi.Input<GooglePrivacyDlpV2LargeCustomDictionaryConfigResponse> largeCustomDictionary;
  /// Store regular expression-based StoredInfoType.
  final pulumi.Input<GooglePrivacyDlpV2RegexResponse> regex;

  /// Creates a new [GooglePrivacyDlpV2StoredInfoTypeConfigResponse].
  /// [description] Description of the StoredInfoType (max 256 characters).
  /// [dictionary] Store dictionary-based CustomInfoType.
  /// [displayName] Display name of the StoredInfoType (max 256 characters).
  /// [largeCustomDictionary] StoredInfoType where findings are defined by a dictionary of phrases.
  /// [regex] Store regular expression-based StoredInfoType.
  const GooglePrivacyDlpV2StoredInfoTypeConfigResponse({
    required this.description,
    required this.dictionary,
    required this.displayName,
    required this.largeCustomDictionary,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'dictionary': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DictionaryResponse, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'displayName': displayName,
      'largeCustomDictionary': pulumi.Input.mapInputValue<GooglePrivacyDlpV2LargeCustomDictionaryConfigResponse, Map<String, dynamic>>(largeCustomDictionary, (value) => value.toMap()),
      'regex': pulumi.Input.mapInputValue<GooglePrivacyDlpV2RegexResponse, Map<String, dynamic>>(regex, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2StoredInfoTypeConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredInfoTypeConfigResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      dictionary: pulumi.Input.fromValue(GooglePrivacyDlpV2DictionaryResponse.fromMap((map['dictionary']! as Map).cast<String, dynamic>())),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      largeCustomDictionary: pulumi.Input.fromValue(GooglePrivacyDlpV2LargeCustomDictionaryConfigResponse.fromMap((map['largeCustomDictionary']! as Map).cast<String, dynamic>())),
      regex: pulumi.Input.fromValue(GooglePrivacyDlpV2RegexResponse.fromMap((map['regex']! as Map).cast<String, dynamic>())),
    );
  }
}
