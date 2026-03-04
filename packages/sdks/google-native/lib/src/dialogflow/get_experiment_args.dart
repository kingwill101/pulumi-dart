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
    required this.agentId,
    required this.environmentId,
    required this.experimentId,
    required this.location,
    this.project,
  });

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
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      experimentId: pulumi.Input.fromValue(map['experimentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
