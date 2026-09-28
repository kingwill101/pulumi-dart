// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agents_by_openai_api_key_agent.dart';

/// Result data returned by getGenaiAgentsByOpenaiApiKey.
class GetGenaiAgentsByOpenaiApiKeyResult {
  final List<GetGenaiAgentsByOpenaiApiKeyAgent>? agents;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? uuid;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyResult].
  /// [agents] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [uuid] Optional.
  const GetGenaiAgentsByOpenaiApiKeyResult({
    this.agents,
    this.id,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents': ?(() { final guardedValue = agents; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'uuid': ?uuid,
    };
  }

  factory GetGenaiAgentsByOpenaiApiKeyResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyResult(
      agents: (() { final guardedValue = map['agents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgent>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgent.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
