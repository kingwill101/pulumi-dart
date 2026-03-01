// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_experiment_args_doc}
/// Arguments for getExperiment.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_experiment_args_doc}
class GetExperimentArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExperimentArgs].
  /// [agentId] Required.
  /// [environmentId] Required.
  /// [experimentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetExperimentArgs({
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> experimentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      experimentId = pulumi.Input.asInput<String>(experimentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'environmentId': environmentId,
      'experimentId': experimentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetExperimentArgs.fromMap(Map<String, dynamic> map) {
    return GetExperimentArgs(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      experimentId: pulumi.Output.create<String>(map['experimentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

