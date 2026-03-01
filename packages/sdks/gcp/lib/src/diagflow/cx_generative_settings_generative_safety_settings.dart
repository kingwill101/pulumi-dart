// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_generative_settings_generative_safety_settings_banned_phrase.dart';

class CxGenerativeSettingsGenerativeSafetySettings {
  /// Banned phrases for generated text.
  /// Structure is documented below.
  final List<CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase>? bannedPhrases;
  /// Optional. Default phrase match strategy for banned phrases.
  /// See [PhraseMatchStrategy](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/GenerativeSettings#phrasematchstrategy) for valid values.
  final String? defaultBannedPhraseMatchStrategy;

  /// Creates a new [CxGenerativeSettingsGenerativeSafetySettings].
  /// [bannedPhrases] Banned phrases for generated text.
  /// [defaultBannedPhraseMatchStrategy] Optional. Default phrase match strategy for banned phrases.
  CxGenerativeSettingsGenerativeSafetySettings({
    this.bannedPhrases,
    this.defaultBannedPhraseMatchStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bannedPhrases': ?bannedPhrases == null ? null : pulumi.Input.encodeList<CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase, Map<String, dynamic>>(bannedPhrases!, (value) => value.toMap()),
      'defaultBannedPhraseMatchStrategy': ?defaultBannedPhraseMatchStrategy,
    };
  }

  factory CxGenerativeSettingsGenerativeSafetySettings.fromMap(Map<String, dynamic> map) {
    return CxGenerativeSettingsGenerativeSafetySettings(
      bannedPhrases: map['bannedPhrases'] == null ? null : pulumi.Input.decodeList<CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase>(map['bannedPhrases'], (value) => CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase.fromMap((value as Map).cast<String, dynamic>())),
      defaultBannedPhraseMatchStrategy: map['defaultBannedPhraseMatchStrategy'] == null ? null : map['defaultBannedPhraseMatchStrategy'] as String,
    );
  }
}

