import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_input_config_response_translate_v3beta1.dart';
import 'glossary_translate_v3beta1_args.dart';
import 'language_code_pair_response_translate_v3beta1.dart';
import 'language_codes_set_response_translate_v3beta1.dart';

/// Creates a glossary and returns the long-running operation. Returns NOT_FOUND, if the project doesn't exist.
class GlossaryTranslateV3beta1 extends pulumi.CustomResource {
  /// When the glossary creation was finished.
  late final pulumi.Output<String> endTime;
  /// The number of entries defined in the glossary.
  late final pulumi.Output<int> entryCount;
  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  late final pulumi.Output<GlossaryInputConfigResponseTranslateV3beta1> inputConfig;
  /// Used with equivalent term set glossaries.
  late final pulumi.Output<LanguageCodesSetResponseTranslateV3beta1> languageCodesSet;
  /// Used with unidirectional glossaries.
  late final pulumi.Output<LanguageCodePairResponseTranslateV3beta1> languagePair;
  late final pulumi.Output<String> location;
  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// When CreateGlossary was called.
  late final pulumi.Output<String> submitTime;

  /// Creates a new [GlossaryTranslateV3beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlossaryTranslateV3beta1]. {@macro pulumi_translate_v3beta1_glossary_translate_v3beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlossaryTranslateV3beta1(
    String name, {
    GlossaryTranslateV3beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:translate/v3beta1:Glossary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endTime = registerOutput<String>('endTime');
    entryCount = registerOutput<int>('entryCount');
    inputConfig = registerOutput<GlossaryInputConfigResponseTranslateV3beta1>('inputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlossaryInputConfigResponseTranslateV3beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageCodesSet = registerOutput<LanguageCodesSetResponseTranslateV3beta1>('languageCodesSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LanguageCodesSetResponseTranslateV3beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languagePair = registerOutput<LanguageCodePairResponseTranslateV3beta1>('languagePair', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LanguageCodePairResponseTranslateV3beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    submitTime = registerOutput<String>('submitTime');
  }
}
