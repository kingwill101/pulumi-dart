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
  const GetSessionEntityTypeDialogflowV3Args({
    required this.agentId,
    required this.entityTypeId,
    required this.environmentId,
    required this.location,
    this.project,
    required this.sessionId,
  });

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
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      entityTypeId: pulumi.Input.fromValue(map['entityTypeId'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionId: pulumi.Input.fromValue(map['sessionId'] as String),
    );
  }
}
