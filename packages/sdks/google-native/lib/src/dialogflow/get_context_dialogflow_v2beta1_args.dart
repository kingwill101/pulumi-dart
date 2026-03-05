// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_get_context_dialogflow_v2beta1_args_doc}
/// Arguments for getContext.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_get_context_dialogflow_v2beta1_args_doc}
class GetContextDialogflowV2beta1Args {
  final pulumi.Input<String> contextId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;
  final pulumi.Input<String> userId;

  /// Creates a new [GetContextDialogflowV2beta1Args].
  /// [contextId] Required.
  /// [environmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sessionId] Required.
  /// [userId] Required.
  GetContextDialogflowV2beta1Args({
    required this.contextId,
    required this.environmentId,
    required this.location,
    this.project,
    required this.sessionId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextId': contextId,
      'environmentId': environmentId,
      'location': location,
      'project': ?project,
      'sessionId': sessionId,
      'userId': userId,
    };
  }

  factory GetContextDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetContextDialogflowV2beta1Args(
      contextId: pulumi.Input.fromValue(map['contextId'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionId: pulumi.Input.fromValue(map['sessionId'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}

