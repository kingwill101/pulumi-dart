// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_agent_platform_agents_by_openai_api_key_get_agent_platform_agents_by_openai_api_key_args_doc}
/// Arguments for getAgentPlatformAgentsByOpenaiApiKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_agents_by_openai_api_key_get_agent_platform_agents_by_openai_api_key_args_doc}
class GetAgentPlatformAgentsByOpenaiApiKeyArgs {
  final pulumi.Input<String> uuid;

  /// Creates a new [GetAgentPlatformAgentsByOpenaiApiKeyArgs].
  /// [uuid] Required.
  const GetAgentPlatformAgentsByOpenaiApiKeyArgs({
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetAgentPlatformAgentsByOpenaiApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsByOpenaiApiKeyArgs(
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
