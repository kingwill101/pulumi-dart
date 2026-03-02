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
      entityTypeId: (map['entityTypeId'] as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sessionId: (map['sessionId'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

