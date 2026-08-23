// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_entity_type_entity_response.dart';

/// Result data returned by getEntityType.
class GetEntityTypeResult {
  /// Optional. Indicates whether the entity type can be automatically expanded.
  final String autoExpansionMode;
  /// The name of the entity type.
  final String displayName;
  /// Optional. Enables fuzzy entity extraction during classification.
  final bool enableFuzzyExtraction;
  /// Optional. The collection of entity entries associated with the entity type.
  final List<GoogleCloudDialogflowV2EntityTypeEntityResponse> entities;
  /// Indicates the kind of entity type.
  final String kind;
  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `projects//agent/entityTypes/`.
  final String name;

  /// Creates a new [GetEntityTypeResult].
  /// [autoExpansionMode] Optional. Indicates whether the entity type can be automatically expanded.
  /// [displayName] The name of the entity type.
  /// [enableFuzzyExtraction] Optional. Enables fuzzy entity extraction during classification.
  /// [entities] Optional. The collection of entity entries associated with the entity type.
  /// [kind] Indicates the kind of entity type.
  /// [name] The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `projects//agent/entityTypes/`.
  const GetEntityTypeResult({
    required this.autoExpansionMode,
    required this.displayName,
    required this.enableFuzzyExtraction,
    required this.entities,
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoExpansionMode': autoExpansionMode,
      'displayName': displayName,
      'enableFuzzyExtraction': enableFuzzyExtraction,
      'entities': pulumi.Input.encodeList<GoogleCloudDialogflowV2EntityTypeEntityResponse, Map<String, dynamic>>(entities, (value) => value.toMap()),
      'kind': kind,
      'name': name,
    };
  }

  factory GetEntityTypeResult.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeResult(
      autoExpansionMode: map['autoExpansionMode'] as String,
      displayName: map['displayName'] as String,
      enableFuzzyExtraction: map['enableFuzzyExtraction'] as bool,
      entities: pulumi.Input.decodeList<GoogleCloudDialogflowV2EntityTypeEntityResponse>(map['entities']!, (value) => GoogleCloudDialogflowV2EntityTypeEntityResponse.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}
