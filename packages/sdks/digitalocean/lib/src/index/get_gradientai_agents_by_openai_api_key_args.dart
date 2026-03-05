// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_gradientai_agents_by_openai_api_key_get_gradientai_agents_by_openai_api_key_args_doc}
/// Arguments for getGradientaiAgentsByOpenaiApiKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_agents_by_openai_api_key_get_gradientai_agents_by_openai_api_key_args_doc}
class GetGradientaiAgentsByOpenaiApiKeyArgs {
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyArgs].
  /// [uuid] Required.
  GetGradientaiAgentsByOpenaiApiKeyArgs({
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyArgs(
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}

