// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agents_by_openai_api_key_agent.dart';

/// Result data returned by getGenaiAgentsByOpenaiApiKey.
class GetGenaiAgentsByOpenaiApiKeyResult {
  final List<GetGenaiAgentsByOpenaiApiKeyAgent> agents;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String uuid;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyResult].
  /// [agents] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [uuid] Required.
  const GetGenaiAgentsByOpenaiApiKeyResult({
    required this.agents,
    required this.id,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents': pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgent, Map<String, dynamic>>(agents, (value) => value.toMap()),
      'id': id,
      'uuid': uuid,
    };
  }

  factory GetGenaiAgentsByOpenaiApiKeyResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyResult(
      agents: pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgent>(map['agents']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgent.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      uuid: map['uuid'] as String,
    );
  }
}
