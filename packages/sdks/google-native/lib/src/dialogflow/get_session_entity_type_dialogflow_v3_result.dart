// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_entity_type_entity_response.dart';

/// Result data returned by getSessionEntityType.
class GetSessionEntityTypeDialogflowV3Result {
  /// The collection of entities to override or supplement the custom entity type.
  final List<GoogleCloudDialogflowCxV3EntityTypeEntityResponse>? entities;
  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final String? entityOverrideMode;
  /// The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  final String? name;

  /// Creates a new [GetSessionEntityTypeDialogflowV3Result].
  /// [entities] The collection of entities to override or supplement the custom entity type.
  /// [entityOverrideMode] Indicates whether the additional data should override or supplement the custom entity type definition.
  /// [name] The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  const GetSessionEntityTypeDialogflowV3Result({
    this.entities,
    this.entityOverrideMode,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entities': ?(() { final guardedValue = entities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3EntityTypeEntityResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'entityOverrideMode': ?entityOverrideMode,
      'name': ?name,
    };
  }

  factory GetSessionEntityTypeDialogflowV3Result.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeDialogflowV3Result(
      entities: (() { final guardedValue = map['entities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3EntityTypeEntityResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3EntityTypeEntityResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      entityOverrideMode: (() { final guardedValue = map['entityOverrideMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
