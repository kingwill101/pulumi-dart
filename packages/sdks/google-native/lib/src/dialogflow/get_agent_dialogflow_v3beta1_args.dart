// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_agent_dialogflow_v3beta1_args_doc}
/// Arguments for getAgent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_agent_dialogflow_v3beta1_args_doc}
class GetAgentDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAgentDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAgentDialogflowV3beta1Args({
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAgentDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetAgentDialogflowV3beta1Args(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

