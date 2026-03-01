// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_get_session_entity_type_dialogflow_v2beta1_args_doc}
/// Arguments for getSessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_get_session_entity_type_dialogflow_v2beta1_args_doc}
class GetSessionEntityTypeDialogflowV2beta1Args {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;
  final pulumi.Input<String> userId;

  /// Creates a new [GetSessionEntityTypeDialogflowV2beta1Args].
  /// [entityTypeId] Required.
  /// [environmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sessionId] Required.
  /// [userId] Required.
  GetSessionEntityTypeDialogflowV2beta1Args({
    required pulumi.Output<String> entityTypeId,
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sessionId,
    required pulumi.Output<String> userId,
  }) :
      entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      sessionId = pulumi.Input.asInput<String>(sessionId),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityTypeId': entityTypeId,
      'environmentId': environmentId,
      'location': location,
      'project': ?project,
      'sessionId': sessionId,
      'userId': userId,
    };
  }

  factory GetSessionEntityTypeDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeDialogflowV2beta1Args(
      entityTypeId: pulumi.Output.create<String>(map['entityTypeId'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sessionId: pulumi.Output.create<String>(map['sessionId'] as String),
      userId: pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

