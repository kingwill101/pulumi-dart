// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_input_config.dart';
import 'language_code_pair.dart';
import 'language_codes_set.dart';

/// {@template pulumi_translate_v3_glossary_args_doc}
/// The set of arguments for Glossary.
/// {@endtemplate}
/// {@macro pulumi_translate_v3_glossary_args_doc}
class GlossaryArgs {
  /// Optional. The display name of the glossary.
  final pulumi.Input<String>? displayName;
  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  final pulumi.Input<GlossaryInputConfig> inputConfig;
  /// Used with equivalent term set glossaries.
  final pulumi.Input<LanguageCodesSet>? languageCodesSet;
  /// Used with unidirectional glossaries.
  final pulumi.Input<LanguageCodePair>? languagePair;
  final pulumi.Input<String>? location;
  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [GlossaryArgs].
  /// [displayName] Optional. The display name of the glossary.
  /// [inputConfig] Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  /// [languageCodesSet] Used with equivalent term set glossaries.
  /// [languagePair] Used with unidirectional glossaries.
  /// [location] Optional.
  /// [name] The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  /// [project] Optional.
  GlossaryArgs({
    pulumi.Output<String>? displayName,
    required pulumi.Output<GlossaryInputConfig> inputConfig,
    pulumi.Output<LanguageCodesSet>? languageCodesSet,
    pulumi.Output<LanguageCodePair>? languagePair,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      inputConfig = pulumi.Input.asInput<GlossaryInputConfig>(inputConfig),
      languageCodesSet = pulumi.Input.asOptionalInput<LanguageCodesSet>(languageCodesSet),
      languagePair = pulumi.Input.asOptionalInput<LanguageCodePair>(languagePair),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'inputConfig': pulumi.Input.mapInputValue<GlossaryInputConfig, Map<String, dynamic>>(inputConfig, (value) => value.toMap()),
      'languageCodesSet': ?pulumi.Input.mapOptionalInputValue<LanguageCodesSet, Map<String, dynamic>>(languageCodesSet, (value) => value.toMap()),
      'languagePair': ?pulumi.Input.mapOptionalInputValue<LanguageCodePair, Map<String, dynamic>>(languagePair, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory GlossaryArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryArgs(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      inputConfig: pulumi.Output.create<GlossaryInputConfig>(GlossaryInputConfig.fromMap((map['inputConfig'] as Map).cast<String, dynamic>())),
      languageCodesSet: map['languageCodesSet'] == null ? null : pulumi.Output.create<LanguageCodesSet>(LanguageCodesSet.fromMap((map['languageCodesSet'] as Map).cast<String, dynamic>())),
      languagePair: map['languagePair'] == null ? null : pulumi.Output.create<LanguageCodePair>(LanguageCodePair.fromMap((map['languagePair'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

