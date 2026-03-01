// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_openai_api_key_model.dart';

/// {@template pulumi_index_genai_openai_api_key_genai_openai_api_key_args_doc}
/// The set of arguments for GenaiOpenaiApiKey.
/// {@endtemplate}
/// {@macro pulumi_index_genai_openai_api_key_genai_openai_api_key_args_doc}
class GenaiOpenaiApiKeyArgs {
  /// The OpenAI API key.
  final pulumi.Input<String> apiKey;
  /// Models associated with the OpenAI API key
  final pulumi.Input<List<GenaiOpenaiApiKeyModel>>? models;
  /// A name for the API key.
  final pulumi.Input<String>? name;

  /// Creates a new [GenaiOpenaiApiKeyArgs].
  /// [apiKey] The OpenAI API key.
  /// [models] Models associated with the OpenAI API key
  /// [name] A name for the API key.
  GenaiOpenaiApiKeyArgs({
    required pulumi.Output<String> apiKey,
    pulumi.Output<List<GenaiOpenaiApiKeyModel>>? models,
    pulumi.Output<String>? name,
  }) :
      apiKey = pulumi.Input.asInput<String>(apiKey),
      models = pulumi.Input.asOptionalInput<List<GenaiOpenaiApiKeyModel>>(models),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GenaiOpenaiApiKeyModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GenaiOpenaiApiKeyModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory GenaiOpenaiApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return GenaiOpenaiApiKeyArgs(
      apiKey: pulumi.Output.create<String>(map['apiKey'] as String),
      models: map['models'] == null ? null : pulumi.Output.create<List<GenaiOpenaiApiKeyModel>>(pulumi.Input.decodeList<GenaiOpenaiApiKeyModel>(map['models'], (value) => GenaiOpenaiApiKeyModel.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

