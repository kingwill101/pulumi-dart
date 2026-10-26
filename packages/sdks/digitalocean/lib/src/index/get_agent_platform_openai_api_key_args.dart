// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_agent_platform_openai_api_key_get_agent_platform_openai_api_key_args_doc}
/// Arguments for getAgentPlatformOpenaiApiKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_openai_api_key_get_agent_platform_openai_api_key_args_doc}
class GetAgentPlatformOpenaiApiKeyArgs {
  final pulumi.Input<String> uuid;

  /// Creates a new [GetAgentPlatformOpenaiApiKeyArgs].
  /// [uuid] Required.
  const GetAgentPlatformOpenaiApiKeyArgs({
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetAgentPlatformOpenaiApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformOpenaiApiKeyArgs(
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
