// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_entity_type_entity.dart';
import 'session_entity_type_entity_override_mode_dialogflow_v3.dart';

/// {@template pulumi_dialogflow_v3_session_entity_type_dialogflow_v3_args_doc}
/// The set of arguments for SessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_session_entity_type_dialogflow_v3_args_doc}
class SessionEntityTypeDialogflowV3Args {
  final pulumi.Input<String> agentId;
  /// The collection of entities to override or supplement the custom entity type.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3EntityTypeEntity>> entities;
  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final pulumi.Input<SessionEntityTypeEntityOverrideModeDialogflowV3> entityOverrideMode;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String>? location;
  /// The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;

  /// Creates a new [SessionEntityTypeDialogflowV3Args].
  /// [agentId] Required.
  /// [entities] The collection of entities to override or supplement the custom entity type.
  /// [entityOverrideMode] Indicates whether the additional data should override or supplement the custom entity type definition.
  /// [environmentId] Required.
  /// [location] Optional.
  /// [name] The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  /// [project] Optional.
  /// [sessionId] Required.
  SessionEntityTypeDialogflowV3Args({
    required this.agentId,
    required this.entities,
    required this.entityOverrideMode,
    required this.environmentId,
    this.location,
    this.name,
    this.project,
    required this.sessionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'entities': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3EntityTypeEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3EntityTypeEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entityOverrideMode': pulumi.Input.mapInputValue<SessionEntityTypeEntityOverrideModeDialogflowV3, String>(entityOverrideMode, (value) => value.value),
      'environmentId': environmentId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'sessionId': sessionId,
    };
  }

  factory SessionEntityTypeDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return SessionEntityTypeDialogflowV3Args(
      agentId: (map['agentId'] as String).input(),
      entities: (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3EntityTypeEntity>(map['entities'], (value) => GoogleCloudDialogflowCxV3EntityTypeEntity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      entityOverrideMode: (SessionEntityTypeEntityOverrideModeDialogflowV3.fromValue(map['entityOverrideMode'] as String)).input(),
      environmentId: (map['environmentId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sessionId: (map['sessionId'] as String).input(),
    );
  }
}

