// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_auto_expansion_mode.dart';
import 'entity_type_kind.dart';
import 'google_cloud_dialogflow_v2_entity_type_entity.dart';

/// {@template pulumi_dialogflow_v2_entity_type_args_doc}
/// The set of arguments for EntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_entity_type_args_doc}
class EntityTypeArgs {
  /// Optional. Indicates whether the entity type can be automatically expanded.
  final pulumi.Input<EntityTypeAutoExpansionMode>? autoExpansionMode;
  /// The name of the entity type.
  final pulumi.Input<String> displayName;
  /// Optional. Enables fuzzy entity extraction during classification.
  final pulumi.Input<bool>? enableFuzzyExtraction;
  /// Optional. The collection of entity entries associated with the entity type.
  final pulumi.Input<List<GoogleCloudDialogflowV2EntityTypeEntity>>? entities;
  /// Indicates the kind of entity type.
  final pulumi.Input<EntityTypeKind> kind;
  /// Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `projects//agent/entityTypes/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [EntityTypeArgs].
  /// [autoExpansionMode] Optional. Indicates whether the entity type can be automatically expanded.
  /// [displayName] The name of the entity type.
  /// [enableFuzzyExtraction] Optional. Enables fuzzy entity extraction during classification.
  /// [entities] Optional. The collection of entity entries associated with the entity type.
  /// [kind] Indicates the kind of entity type.
  /// [languageCode] Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  /// [location] Optional.
  /// [name] The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `projects//agent/entityTypes/`.
  /// [project] Optional.
  const EntityTypeArgs({
    this.autoExpansionMode,
    required this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    required this.kind,
    this.languageCode,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoExpansionMode': ?pulumi.Input.mapOptionalInputValue<EntityTypeAutoExpansionMode, String>(autoExpansionMode, (value) => value.wireValue),
      'displayName': displayName,
      'enableFuzzyExtraction': ?enableFuzzyExtraction,
      'entities': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2EntityTypeEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2EntityTypeEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': pulumi.Input.mapInputValue<EntityTypeKind, String>(kind, (value) => value.wireValue),
      'languageCode': ?languageCode,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory EntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return EntityTypeArgs(
      autoExpansionMode: (() { final guardedValue = map['autoExpansionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityTypeAutoExpansionMode.fromValue(guardedValue as String)); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enableFuzzyExtraction: (() { final guardedValue = map['enableFuzzyExtraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entities: (() { final guardedValue = map['entities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2EntityTypeEntity>(guardedValue, (value) => GoogleCloudDialogflowV2EntityTypeEntity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: pulumi.Input.fromValue(EntityTypeKind.fromValue(map['kind']! as String)),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
