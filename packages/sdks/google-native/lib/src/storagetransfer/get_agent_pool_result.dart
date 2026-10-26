// ignore_for_file: unused_element, unnecessary_cast

import 'bandwidth_limit_response.dart';

/// Result data returned by getAgentPool.
class GetAgentPoolResult {
  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  final BandwidthLimitResponse? bandwidthLimit;
  /// Specifies the client-specified AgentPool description.
  final String? displayName;
  /// Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  final String? name;
  /// Specifies the state of the AgentPool.
  final String? state;

  /// Creates a new [GetAgentPoolResult].
  /// [bandwidthLimit] Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  /// [displayName] Specifies the client-specified AgentPool description.
  /// [name] Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  /// [state] Specifies the state of the AgentPool.
  const GetAgentPoolResult({
    this.bandwidthLimit,
    this.displayName,
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthLimit': ?bandwidthLimit?.toMap(),
      'displayName': ?displayName,
      'name': ?name,
      'state': ?state,
    };
  }

  factory GetAgentPoolResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolResult(
      bandwidthLimit: (() { final guardedValue = map['bandwidthLimit']; if (guardedValue == null) return null; return BandwidthLimitResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
