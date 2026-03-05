// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagetransfer_v1_get_agent_pool_args_doc}
/// Arguments for getAgentPool.
/// {@endtemplate}
/// {@macro pulumi_storagetransfer_v1_get_agent_pool_args_doc}
class GetAgentPoolArgs {
  final pulumi.Input<String> agentPoolId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAgentPoolArgs].
  /// [agentPoolId] Required.
  /// [project] Optional.
  GetAgentPoolArgs({
    required this.agentPoolId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolId': agentPoolId,
      'project': ?project,
    };
  }

  factory GetAgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolArgs(
      agentPoolId: pulumi.Input.fromValue(map['agentPoolId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

