// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_session_entity_type_args_doc}
/// Arguments for getSessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_session_entity_type_args_doc}
class GetSessionEntityTypeArgs {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;
  final pulumi.Input<String> userId;

  /// Creates a new [GetSessionEntityTypeArgs].
  /// [entityTypeId] Required.
  /// [environmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sessionId] Required.
  /// [userId] Required.
  GetSessionEntityTypeArgs({
    required this.entityTypeId,
    required this.environmentId,
    required this.location,
    this.project,
    required this.sessionId,
    required this.userId,
  });

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

  factory GetSessionEntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeArgs(
      entityTypeId: pulumi.Input.fromValue(map['entityTypeId'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionId: pulumi.Input.fromValue(map['sessionId'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
