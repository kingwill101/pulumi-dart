// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_session_entity_type_dialogflow_v3_args_doc}
/// Arguments for getSessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_session_entity_type_dialogflow_v3_args_doc}
class GetSessionEntityTypeDialogflowV3Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;

  /// Creates a new [GetSessionEntityTypeDialogflowV3Args].
  /// [agentId] Required.
  /// [entityTypeId] Required.
  /// [environmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sessionId] Required.
  GetSessionEntityTypeDialogflowV3Args({
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> entityTypeId,
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sessionId,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      sessionId = pulumi.Input.asInput<String>(sessionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'entityTypeId': entityTypeId,
      'environmentId': environmentId,
      'location': location,
      'project': ?project,
      'sessionId': sessionId,
    };
  }

  factory GetSessionEntityTypeDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeDialogflowV3Args(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      entityTypeId: pulumi.Output.create<String>(map['entityTypeId'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sessionId: pulumi.Output.create<String>(map['sessionId'] as String),
    );
  }
}

