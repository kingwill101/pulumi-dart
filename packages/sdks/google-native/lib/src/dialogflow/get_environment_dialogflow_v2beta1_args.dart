// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_get_environment_dialogflow_v2beta1_args_doc}
/// Arguments for getEnvironment.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_get_environment_dialogflow_v2beta1_args_doc}
class GetEnvironmentDialogflowV2beta1Args {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEnvironmentDialogflowV2beta1Args].
  /// [environmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEnvironmentDialogflowV2beta1Args({
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEnvironmentDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentDialogflowV2beta1Args(
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

