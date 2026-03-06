// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase {
  /// Language code of the phrase.
  final pulumi.Input<String> languageCode;
  /// Text input which can be used for prompt or banned phrases.
  final pulumi.Input<String> text;

  /// Creates a new [CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase].
  /// [languageCode] Language code of the phrase.
  /// [text] Text input which can be used for prompt or banned phrases.
  const CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase({
    required this.languageCode,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': languageCode,
      'text': text,
    };
  }

  factory CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase.fromMap(Map<String, dynamic> map) {
    return CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase(
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}

