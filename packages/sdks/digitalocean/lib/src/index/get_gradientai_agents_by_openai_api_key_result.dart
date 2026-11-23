// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_by_openai_api_key_agent.dart';

/// Result data returned by getGradientaiAgentsByOpenaiApiKey.
class GetGradientaiAgentsByOpenaiApiKeyResult {
  final List<GetGradientaiAgentsByOpenaiApiKeyAgent>? agents;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? uuid;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyResult].
  /// [agents] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [uuid] Optional.
  const GetGradientaiAgentsByOpenaiApiKeyResult({
    this.agents,
    this.id,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents': ?(() { final guardedValue = agents; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'uuid': ?uuid,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyResult(
      agents: (() { final guardedValue = map['agents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgent>(guardedValue, (value) => GetGradientaiAgentsByOpenaiApiKeyAgent.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
