// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_input_config_translate_v3beta1.dart';
import 'language_code_pair_translate_v3beta1.dart';
import 'language_codes_set_translate_v3beta1.dart';

/// {@template pulumi_translate_v3beta1_glossary_translate_v3beta1_args_doc}
/// The set of arguments for Glossary.
/// {@endtemplate}
/// {@macro pulumi_translate_v3beta1_glossary_translate_v3beta1_args_doc}
class GlossaryTranslateV3beta1Args {
  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  final pulumi.Input<GlossaryInputConfigTranslateV3beta1> inputConfig;
  /// Used with equivalent term set glossaries.
  final pulumi.Input<LanguageCodesSetTranslateV3beta1>? languageCodesSet;
  /// Used with unidirectional glossaries.
  final pulumi.Input<LanguageCodePairTranslateV3beta1>? languagePair;
  final pulumi.Input<String>? location;
  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [GlossaryTranslateV3beta1Args].
  /// [inputConfig] Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  /// [languageCodesSet] Used with equivalent term set glossaries.
  /// [languagePair] Used with unidirectional glossaries.
  /// [location] Optional.
  /// [name] The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  /// [project] Optional.
  GlossaryTranslateV3beta1Args({
    required this.inputConfig,
    this.languageCodesSet,
    this.languagePair,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputConfig': pulumi.Input.mapInputValue<GlossaryInputConfigTranslateV3beta1, Map<String, dynamic>>(inputConfig, (value) => value.toMap()),
      'languageCodesSet': ?pulumi.Input.mapOptionalInputValue<LanguageCodesSetTranslateV3beta1, Map<String, dynamic>>(languageCodesSet, (value) => value.toMap()),
      'languagePair': ?pulumi.Input.mapOptionalInputValue<LanguageCodePairTranslateV3beta1, Map<String, dynamic>>(languagePair, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory GlossaryTranslateV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GlossaryTranslateV3beta1Args(
      inputConfig: (GlossaryInputConfigTranslateV3beta1.fromMap((map['inputConfig'] as Map).cast<String, dynamic>())).input(),
      languageCodesSet: map['languageCodesSet'] == null ? null : (LanguageCodesSetTranslateV3beta1.fromMap((map['languageCodesSet']! as Map).cast<String, dynamic>())).input(),
      languagePair: map['languagePair'] == null ? null : (LanguageCodePairTranslateV3beta1.fromMap((map['languagePair']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

