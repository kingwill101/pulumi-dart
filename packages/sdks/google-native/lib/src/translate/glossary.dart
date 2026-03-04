import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_args.dart';
import 'glossary_input_config_response.dart';
import 'language_code_pair_response.dart';
import 'language_codes_set_response.dart';

/// Creates a glossary and returns the long-running operation. Returns NOT_FOUND, if the project doesn't exist.
class Glossary extends pulumi.CustomResource {
  /// Optional. The display name of the glossary.
  late final pulumi.Output<String> displayName;

  /// When the glossary creation was finished.
  late final pulumi.Output<String> endTime;

  /// The number of entries defined in the glossary.
  late final pulumi.Output<int> entryCount;

  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  late final pulumi.Output<GlossaryInputConfigResponse> inputConfig;

  /// Used with equivalent term set glossaries.
  late final pulumi.Output<LanguageCodesSetResponse> languageCodesSet;

  /// Used with unidirectional glossaries.
  late final pulumi.Output<LanguageCodePairResponse> languagePair;
  late final pulumi.Output<String> location;

  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// When CreateGlossary was called.
  late final pulumi.Output<String> submitTime;

  /// Creates a new [Glossary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Glossary]. {@macro pulumi_translate_v3_glossary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Glossary(
    String name, {
    GlossaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:translate/v3:Glossary',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    displayName = registerOutput<String>('displayName');
    endTime = registerOutput<String>('endTime');
    entryCount = registerOutput<int>('entryCount');
    inputConfig = registerOutput<GlossaryInputConfigResponse>('inputConfig');
    languageCodesSet = registerOutput<LanguageCodesSetResponse>(
      'languageCodesSet',
    );
    languagePair = registerOutput<LanguageCodePairResponse>('languagePair');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    submitTime = registerOutput<String>('submitTime');
  }
}
