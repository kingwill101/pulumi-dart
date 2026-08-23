// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_environment_dialogflow_v3_args_doc}
/// Arguments for getEnvironment.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_environment_dialogflow_v3_args_doc}
class GetEnvironmentDialogflowV3Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEnvironmentDialogflowV3Args].
  /// [agentId] Required.
  /// [environmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetEnvironmentDialogflowV3Args({
    required this.agentId,
    required this.environmentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'environmentId': environmentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEnvironmentDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentDialogflowV3Args(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
