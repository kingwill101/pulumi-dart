// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_entity_type_entity_response.dart';

/// Result data returned by getSessionEntityType.
class GetSessionEntityTypeDialogflowV2beta1Result {
  /// The collection of entities associated with this session entity type.
  final List<GoogleCloudDialogflowV2beta1EntityTypeEntityResponse>? entities;
  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final String? entityOverrideMode;
  /// The unique identifier of this session entity type. Supported formats: - `projects//agent/sessions//entityTypes/` - `projects//locations//agent/sessions//entityTypes/` - `projects//agent/environments//users//sessions//entityTypes/` - `projects//locations//agent/environments/ /users//sessions//entityTypes/` If `Location ID` is not specified we assume default 'us' location. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  final String? name;

  /// Creates a new [GetSessionEntityTypeDialogflowV2beta1Result].
  /// [entities] The collection of entities associated with this session entity type.
  /// [entityOverrideMode] Indicates whether the additional data should override or supplement the custom entity type definition.
  /// [name] The unique identifier of this session entity type. Supported formats: - `projects//agent/sessions//entityTypes/` - `projects//locations//agent/sessions//entityTypes/` - `projects//agent/environments//users//sessions//entityTypes/` - `projects//locations//agent/environments/ /users//sessions//entityTypes/` If `Location ID` is not specified we assume default 'us' location. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  const GetSessionEntityTypeDialogflowV2beta1Result({
    this.entities,
    this.entityOverrideMode,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entities': ?(() { final guardedValue = entities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1EntityTypeEntityResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'entityOverrideMode': ?entityOverrideMode,
      'name': ?name,
    };
  }

  factory GetSessionEntityTypeDialogflowV2beta1Result.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeDialogflowV2beta1Result(
      entities: (() { final guardedValue = map['entities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1EntityTypeEntityResponse>(guardedValue, (value) => GoogleCloudDialogflowV2beta1EntityTypeEntityResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      entityOverrideMode: (() { final guardedValue = map['entityOverrideMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
