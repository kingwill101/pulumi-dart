// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_by_openai_api_key_agent.dart';

/// Result data returned by getGradientaiAgentsByOpenaiApiKey.
class GetGradientaiAgentsByOpenaiApiKeyResult {
  final List<GetGradientaiAgentsByOpenaiApiKeyAgent> agents;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String uuid;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyResult].
  /// [agents] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [uuid] Required.
  GetGradientaiAgentsByOpenaiApiKeyResult({
    required this.agents,
    required this.id,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents':
          pulumi.Input.encodeList<
            GetGradientaiAgentsByOpenaiApiKeyAgent,
            Map<String, dynamic>
          >(agents, (value) => value.toMap()),
      'id': id,
      'uuid': uuid,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGradientaiAgentsByOpenaiApiKeyResult(
      agents: pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgent>(
        map['agents']!,
        (value) => GetGradientaiAgentsByOpenaiApiKeyAgent.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      uuid: map['uuid'] as String,
    );
  }
}
