// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_dictionary.dart';
import 'google_privacy_dlp_v2_large_custom_dictionary_config.dart';
import 'google_privacy_dlp_v2_regex.dart';

/// Configuration for stored infoTypes. All fields and subfield are provided by the user. For more information, see https://cloud.google.com/dlp/docs/creating-custom-infotypes.
class GooglePrivacyDlpV2StoredInfoTypeConfig {
  /// Description of the StoredInfoType (max 256 characters).
  final pulumi.Input<String>? description;
  /// Store dictionary-based CustomInfoType.
  final pulumi.Input<GooglePrivacyDlpV2Dictionary>? dictionary;
  /// Display name of the StoredInfoType (max 256 characters).
  final pulumi.Input<String>? displayName;
  /// StoredInfoType where findings are defined by a dictionary of phrases.
  final pulumi.Input<GooglePrivacyDlpV2LargeCustomDictionaryConfig>? largeCustomDictionary;
  /// Store regular expression-based StoredInfoType.
  final pulumi.Input<GooglePrivacyDlpV2Regex>? regex;

  /// Creates a new [GooglePrivacyDlpV2StoredInfoTypeConfig].
  /// [description] Description of the StoredInfoType (max 256 characters).
  /// [dictionary] Store dictionary-based CustomInfoType.
  /// [displayName] Display name of the StoredInfoType (max 256 characters).
  /// [largeCustomDictionary] StoredInfoType where findings are defined by a dictionary of phrases.
  /// [regex] Store regular expression-based StoredInfoType.
  const GooglePrivacyDlpV2StoredInfoTypeConfig({
    this.description,
    this.dictionary,
    this.displayName,
    this.largeCustomDictionary,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dictionary': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Dictionary, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'displayName': ?displayName,
      'largeCustomDictionary': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2LargeCustomDictionaryConfig, Map<String, dynamic>>(largeCustomDictionary, (value) => value.toMap()),
      'regex': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Regex, Map<String, dynamic>>(regex, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2StoredInfoTypeConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredInfoTypeConfig(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dictionary: (() { final guardedValue = map['dictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Dictionary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      largeCustomDictionary: (() { final guardedValue = map['largeCustomDictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2LargeCustomDictionaryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Regex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

