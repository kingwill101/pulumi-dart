// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_auto_expansion_mode_dialogflow_v3beta1.dart';
import 'entity_type_kind_dialogflow_v3beta1.dart';
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_entity.dart';
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_excluded_phrase.dart';

/// {@template pulumi_dialogflow_v3beta1_entity_type_dialogflow_v3beta1_args_doc}
/// The set of arguments for EntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_entity_type_dialogflow_v3beta1_args_doc}
class EntityTypeDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  /// Indicates whether the entity type can be automatically expanded.
  final pulumi.Input<EntityTypeAutoExpansionModeDialogflowV3beta1>? autoExpansionMode;
  /// The human-readable name of the entity type, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Enables fuzzy entity extraction during classification.
  final pulumi.Input<bool>? enableFuzzyExtraction;
  /// The collection of entity entries associated with the entity type.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>>? entities;
  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase>>? excludedPhrases;
  /// Indicates the kind of entity type.
  final pulumi.Input<EntityTypeKindDialogflowV3beta1> kind;
  /// The language of the following fields in `entity_type`: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name during logging.
  final pulumi.Input<bool>? redact;

  /// Creates a new [EntityTypeDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [autoExpansionMode] Indicates whether the entity type can be automatically expanded.
  /// [displayName] The human-readable name of the entity type, unique within the agent.
  /// [enableFuzzyExtraction] Enables fuzzy entity extraction during classification.
  /// [entities] The collection of entity entries associated with the entity type.
  /// [excludedPhrases] Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  /// [kind] Indicates the kind of entity type.
  /// [languageCode] The language of the following fields in `entity_type`: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  /// [location] Optional.
  /// [name] The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  /// [project] Optional.
  /// [redact] Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name during logging.
  const EntityTypeDialogflowV3beta1Args({
    required this.agentId,
    this.autoExpansionMode,
    required this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    this.excludedPhrases,
    required this.kind,
    this.languageCode,
    this.location,
    this.name,
    this.project,
    this.redact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'autoExpansionMode': ?pulumi.Input.mapOptionalInputValue<EntityTypeAutoExpansionModeDialogflowV3beta1, String>(autoExpansionMode, (value) => value.wireValue),
      'displayName': displayName,
      'enableFuzzyExtraction': ?enableFuzzyExtraction,
      'entities': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1EntityTypeEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedPhrases': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase>, List<Map<String, dynamic>>>(excludedPhrases, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': pulumi.Input.mapInputValue<EntityTypeKindDialogflowV3beta1, String>(kind, (value) => value.wireValue),
      'languageCode': ?languageCode,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'redact': ?redact,
    };
  }

  factory EntityTypeDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return EntityTypeDialogflowV3beta1Args(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      autoExpansionMode: (() { final guardedValue = map['autoExpansionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityTypeAutoExpansionModeDialogflowV3beta1.fromValue(guardedValue as String)); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enableFuzzyExtraction: (() { final guardedValue = map['enableFuzzyExtraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entities: (() { final guardedValue = map['entities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1EntityTypeEntity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      excludedPhrases: (() { final guardedValue = map['excludedPhrases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: pulumi.Input.fromValue(EntityTypeKindDialogflowV3beta1.fromValue(map['kind']! as String)),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redact: (() { final guardedValue = map['redact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

