// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_session_entity_type_dialogflow_v3beta1_args_doc}
/// Arguments for getSessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_session_entity_type_dialogflow_v3beta1_args_doc}
class GetSessionEntityTypeDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;

  /// Creates a new [GetSessionEntityTypeDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [entityTypeId] Required.
  /// [environmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sessionId] Required.
  GetSessionEntityTypeDialogflowV3beta1Args({
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

  factory GetSessionEntityTypeDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeDialogflowV3beta1Args(
      agentId: (map['agentId'] as String).input(),
      entityTypeId: (map['entityTypeId'] as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sessionId: (map['sessionId'] as String).input(),
    );
  }
}

