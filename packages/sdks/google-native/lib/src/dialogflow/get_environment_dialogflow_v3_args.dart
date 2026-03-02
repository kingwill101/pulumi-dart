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
  GetEnvironmentDialogflowV3Args({
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
      agentId: (map['agentId'] as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

