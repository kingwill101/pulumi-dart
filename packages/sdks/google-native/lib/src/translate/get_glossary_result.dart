// ignore_for_file: unused_element, unnecessary_cast

import 'glossary_input_config_response.dart';
import 'language_code_pair_response.dart';
import 'language_codes_set_response.dart';

/// Result data returned by getGlossary.
class GetGlossaryResult {
  /// Optional. The display name of the glossary.
  final String displayName;
  /// When the glossary creation was finished.
  final String endTime;
  /// The number of entries defined in the glossary.
  final int entryCount;
  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  final GlossaryInputConfigResponse inputConfig;
  /// Used with equivalent term set glossaries.
  final LanguageCodesSetResponse languageCodesSet;
  /// Used with unidirectional glossaries.
  final LanguageCodePairResponse languagePair;
  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  final String name;
  /// When CreateGlossary was called.
  final String submitTime;

  /// Creates a new [GetGlossaryResult].
  /// [displayName] Optional. The display name of the glossary.
  /// [endTime] When the glossary creation was finished.
  /// [entryCount] The number of entries defined in the glossary.
  /// [inputConfig] Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  /// [languageCodesSet] Used with equivalent term set glossaries.
  /// [languagePair] Used with unidirectional glossaries.
  /// [name] The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  /// [submitTime] When CreateGlossary was called.
  GetGlossaryResult({
    required this.displayName,
    required this.endTime,
    required this.entryCount,
    required this.inputConfig,
    required this.languageCodesSet,
    required this.languagePair,
    required this.name,
    required this.submitTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'endTime': endTime,
      'entryCount': entryCount,
      'inputConfig': inputConfig.toMap(),
      'languageCodesSet': languageCodesSet.toMap(),
      'languagePair': languagePair.toMap(),
      'name': name,
      'submitTime': submitTime,
    };
  }

  factory GetGlossaryResult.fromMap(Map<String, dynamic> map) {
    return GetGlossaryResult(
      displayName: map['displayName'] as String,
      endTime: map['endTime'] as String,
      entryCount: map['entryCount'] as int,
      inputConfig: GlossaryInputConfigResponse.fromMap((map['inputConfig']! as Map).cast<String, dynamic>()),
      languageCodesSet: LanguageCodesSetResponse.fromMap((map['languageCodesSet']! as Map).cast<String, dynamic>()),
      languagePair: LanguageCodePairResponse.fromMap((map['languagePair']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      submitTime: map['submitTime'] as String,
    );
  }
}

