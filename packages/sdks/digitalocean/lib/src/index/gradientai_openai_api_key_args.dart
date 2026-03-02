// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_openai_api_key_model.dart';

/// {@template pulumi_index_gradientai_openai_api_key_gradientai_openai_api_key_args_doc}
/// The set of arguments for GradientaiOpenaiApiKey.
/// {@endtemplate}
/// {@macro pulumi_index_gradientai_openai_api_key_gradientai_openai_api_key_args_doc}
class GradientaiOpenaiApiKeyArgs {
  /// The OpenAI API key.
  final pulumi.Input<String> apiKey;
  /// Models associated with the OpenAI API key
  final pulumi.Input<List<GradientaiOpenaiApiKeyModel>>? models;
  /// A name for the API key.
  final pulumi.Input<String>? name;

  /// Creates a new [GradientaiOpenaiApiKeyArgs].
  /// [apiKey] The OpenAI API key.
  /// [models] Models associated with the OpenAI API key
  /// [name] A name for the API key.
  GradientaiOpenaiApiKeyArgs({
    required this.apiKey,
    this.models,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GradientaiOpenaiApiKeyModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GradientaiOpenaiApiKeyModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory GradientaiOpenaiApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiOpenaiApiKeyArgs(
      apiKey: (map['apiKey'] as String).input(),
      models: map['models'] == null ? null : (pulumi.Input.decodeList<GradientaiOpenaiApiKeyModel>(map['models'], (value) => GradientaiOpenaiApiKeyModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

