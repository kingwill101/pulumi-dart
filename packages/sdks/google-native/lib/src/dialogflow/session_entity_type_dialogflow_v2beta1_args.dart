// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_entity_type_entity.dart';
import 'session_entity_type_entity_override_mode_dialogflow_v2beta1.dart';

/// {@template pulumi_dialogflow_v2beta1_session_entity_type_dialogflow_v2beta1_args_doc}
/// The set of arguments for SessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_session_entity_type_dialogflow_v2beta1_args_doc}
class SessionEntityTypeDialogflowV2beta1Args {
  /// The collection of entities associated with this session entity type.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1EntityTypeEntity>> entities;
  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final pulumi.Input<SessionEntityTypeEntityOverrideModeDialogflowV2beta1> entityOverrideMode;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String>? location;
  /// The unique identifier of this session entity type. Supported formats: - `projects//agent/sessions//entityTypes/` - `projects//locations//agent/sessions//entityTypes/` - `projects//agent/environments//users//sessions//entityTypes/` - `projects//locations//agent/environments/ /users//sessions//entityTypes/` If `Location ID` is not specified we assume default 'us' location. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;
  final pulumi.Input<String> userId;

  /// Creates a new [SessionEntityTypeDialogflowV2beta1Args].
  /// [entities] The collection of entities associated with this session entity type.
  /// [entityOverrideMode] Indicates whether the additional data should override or supplement the custom entity type definition.
  /// [environmentId] Required.
  /// [location] Optional.
  /// [name] The unique identifier of this session entity type. Supported formats: - `projects//agent/sessions//entityTypes/` - `projects//locations//agent/sessions//entityTypes/` - `projects//agent/environments//users//sessions//entityTypes/` - `projects//locations//agent/environments/ /users//sessions//entityTypes/` If `Location ID` is not specified we assume default 'us' location. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  /// [project] Optional.
  /// [sessionId] Required.
  /// [userId] Required.
  SessionEntityTypeDialogflowV2beta1Args({
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
      'entities': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2beta1EntityTypeEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1EntityTypeEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entityOverrideMode': pulumi.Input.mapInputValue<SessionEntityTypeEntityOverrideModeDialogflowV2beta1, String>(entityOverrideMode, (value) => value.value),
      'environmentId': environmentId,
      'location': ?location,
      'name': name,
      'project': ?project,
      'sessionId': sessionId,
      'userId': userId,
    };
  }

  factory SessionEntityTypeDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return SessionEntityTypeDialogflowV2beta1Args(
      entities: (pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1EntityTypeEntity>(map['entities'], (value) => GoogleCloudDialogflowV2beta1EntityTypeEntity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      entityOverrideMode: (SessionEntityTypeEntityOverrideModeDialogflowV2beta1.fromValue(map['entityOverrideMode'] as String)).input(),
      environmentId: (map['environmentId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sessionId: (map['sessionId'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

