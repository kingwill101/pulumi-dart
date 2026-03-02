// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_entity_type_entity.dart';
import 'session_entity_type_entity_override_mode.dart';

/// {@template pulumi_dialogflow_v2_session_entity_type_args_doc}
/// The set of arguments for SessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_session_entity_type_args_doc}
class SessionEntityTypeArgs {
  /// The collection of entities associated with this session entity type.
  final pulumi.Input<List<GoogleCloudDialogflowV2EntityTypeEntity>> entities;
  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final pulumi.Input<SessionEntityTypeEntityOverrideMode> entityOverrideMode;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String>? location;
  /// The unique identifier of this session entity type. Format: `projects//agent/sessions//entityTypes/`, or `projects//agent/environments//users//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;
  final pulumi.Input<String> userId;

  /// Creates a new [SessionEntityTypeArgs].
  /// [entities] The collection of entities associated with this session entity type.
  /// [entityOverrideMode] Indicates whether the additional data should override or supplement the custom entity type definition.
  /// [environmentId] Required.
  /// [location] Optional.
  /// [name] The unique identifier of this session entity type. Format: `projects//agent/sessions//entityTypes/`, or `projects//agent/environments//users//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  /// [project] Optional.
  /// [sessionId] Required.
  /// [userId] Required.
  SessionEntityTypeArgs({
    required this.entities,
    required this.entityOverrideMode,
    required this.environmentId,
    this.location,
    required this.name,
    this.project,
    required this.sessionId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entities': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2EntityTypeEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2EntityTypeEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entityOverrideMode': pulumi.Input.mapInputValue<SessionEntityTypeEntityOverrideMode, String>(entityOverrideMode, (value) => value.value),
      'environmentId': environmentId,
      'location': ?location,
      'name': name,
      'project': ?project,
      'sessionId': sessionId,
      'userId': userId,
    };
  }

  factory SessionEntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return SessionEntityTypeArgs(
      entities: (pulumi.Input.decodeList<GoogleCloudDialogflowV2EntityTypeEntity>(map['entities'], (value) => GoogleCloudDialogflowV2EntityTypeEntity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      entityOverrideMode: (SessionEntityTypeEntityOverrideMode.fromValue(map['entityOverrideMode'] as String)).input(),
      environmentId: (map['environmentId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sessionId: (map['sessionId'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

