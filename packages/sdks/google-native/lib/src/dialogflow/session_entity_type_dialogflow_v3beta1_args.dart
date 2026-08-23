// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_entity.dart';
import 'session_entity_type_entity_override_mode_dialogflow_v3beta1.dart';

/// {@template pulumi_dialogflow_v3beta1_session_entity_type_dialogflow_v3beta1_args_doc}
/// The set of arguments for SessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_session_entity_type_dialogflow_v3beta1_args_doc}
class SessionEntityTypeDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  /// The collection of entities to override or supplement the custom entity type.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>> entities;
  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final pulumi.Input<SessionEntityTypeEntityOverrideModeDialogflowV3beta1> entityOverrideMode;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String>? location;
  /// The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;

  /// Creates a new [SessionEntityTypeDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [entities] The collection of entities to override or supplement the custom entity type.
  /// [entityOverrideMode] Indicates whether the additional data should override or supplement the custom entity type definition.
  /// [environmentId] Required.
  /// [location] Optional.
  /// [name] The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  /// [project] Optional.
  /// [sessionId] Required.
  const SessionEntityTypeDialogflowV3beta1Args({
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
      'entities': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1EntityTypeEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entityOverrideMode': pulumi.Input.mapInputValue<SessionEntityTypeEntityOverrideModeDialogflowV3beta1, String>(entityOverrideMode, (value) => value.wireValue),
      'environmentId': environmentId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'sessionId': sessionId,
    };
  }

  factory SessionEntityTypeDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return SessionEntityTypeDialogflowV3beta1Args(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      entities: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>(map['entities']!, (value) => GoogleCloudDialogflowCxV3beta1EntityTypeEntity.fromMap((value as Map).cast<String, dynamic>()))),
      entityOverrideMode: pulumi.Input.fromValue(SessionEntityTypeEntityOverrideModeDialogflowV3beta1.fromValue(map['entityOverrideMode']! as String)),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionId: pulumi.Input.fromValue(map['sessionId'] as String),
    );
  }
}
