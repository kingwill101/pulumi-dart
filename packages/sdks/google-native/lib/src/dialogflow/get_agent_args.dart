// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_agent_args_doc}
/// Arguments for getAgent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_agent_args_doc}
class GetAgentArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAgentArgs].
  /// [agentId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetAgentArgs({
    required this.agentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentArgs(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
