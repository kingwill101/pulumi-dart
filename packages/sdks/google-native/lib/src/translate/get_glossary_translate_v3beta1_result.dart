// ignore_for_file: unused_element, unnecessary_cast

import 'glossary_input_config_response_translate_v3beta1.dart';
import 'language_code_pair_response_translate_v3beta1.dart';
import 'language_codes_set_response_translate_v3beta1.dart';

/// Result data returned by getGlossary.
class GetGlossaryTranslateV3beta1Result {
  /// When the glossary creation was finished.
  final String? endTime;
  /// The number of entries defined in the glossary.
  final int? entryCount;
  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  final GlossaryInputConfigResponseTranslateV3beta1? inputConfig;
  /// Used with equivalent term set glossaries.
  final LanguageCodesSetResponseTranslateV3beta1? languageCodesSet;
  /// Used with unidirectional glossaries.
  final LanguageCodePairResponseTranslateV3beta1? languagePair;
  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  final String? name;
  /// When CreateGlossary was called.
  final String? submitTime;

  /// Creates a new [GetGlossaryTranslateV3beta1Result].
  /// [endTime] When the glossary creation was finished.
  /// [entryCount] The number of entries defined in the glossary.
  /// [inputConfig] Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  /// [languageCodesSet] Used with equivalent term set glossaries.
  /// [languagePair] Used with unidirectional glossaries.
  /// [name] The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  /// [submitTime] When CreateGlossary was called.
  const GetGlossaryTranslateV3beta1Result({
    this.endTime,
    this.entryCount,
    this.inputConfig,
    this.languageCodesSet,
    this.languagePair,
    this.name,
    this.submitTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'entryCount': ?entryCount,
      'inputConfig': ?inputConfig?.toMap(),
      'languageCodesSet': ?languageCodesSet?.toMap(),
      'languagePair': ?languagePair?.toMap(),
      'name': ?name,
      'submitTime': ?submitTime,
    };
  }

  factory GetGlossaryTranslateV3beta1Result.fromMap(Map<String, dynamic> map) {
    return GetGlossaryTranslateV3beta1Result(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entryCount: (() { final guardedValue = map['entryCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      inputConfig: (() { final guardedValue = map['inputConfig']; if (guardedValue == null) return null; return GlossaryInputConfigResponseTranslateV3beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      languageCodesSet: (() { final guardedValue = map['languageCodesSet']; if (guardedValue == null) return null; return LanguageCodesSetResponseTranslateV3beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      languagePair: (() { final guardedValue = map['languagePair']; if (guardedValue == null) return null; return LanguageCodePairResponseTranslateV3beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      submitTime: (() { final guardedValue = map['submitTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
