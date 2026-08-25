// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_generative_settings_generative_safety_settings_banned_phrase.dart';

class CxGenerativeSettingsGenerativeSafetySettings {
  /// Banned phrases for generated text.
  /// Structure is documented below.
  final pulumi.Input<List<CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase>?>? bannedPhrases;
  /// Optional. Default phrase match strategy for banned phrases.
  /// See [PhraseMatchStrategy](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/GenerativeSettings#phrasematchstrategy) for valid values.
  final pulumi.Input<String?>? defaultBannedPhraseMatchStrategy;

  /// Creates a new [CxGenerativeSettingsGenerativeSafetySettings].
  /// [bannedPhrases] Banned phrases for generated text.
  /// [defaultBannedPhraseMatchStrategy] Optional. Default phrase match strategy for banned phrases.
  const CxGenerativeSettingsGenerativeSafetySettings({
    this.bannedPhrases,
    this.defaultBannedPhraseMatchStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bannedPhrases': ?pulumi.Input.mapOptionalInputValue<List<CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase>, List<Map<String, dynamic>>>(bannedPhrases, (value) => pulumi.Input.encodeList<CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultBannedPhraseMatchStrategy': ?defaultBannedPhraseMatchStrategy,
    };
  }

  factory CxGenerativeSettingsGenerativeSafetySettings.fromMap(Map<String, dynamic> map) {
    return CxGenerativeSettingsGenerativeSafetySettings(
      bannedPhrases: (() { final guardedValue = map['bannedPhrases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase>(guardedValue, (value) => CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultBannedPhraseMatchStrategy: (() { final guardedValue = map['defaultBannedPhraseMatchStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
