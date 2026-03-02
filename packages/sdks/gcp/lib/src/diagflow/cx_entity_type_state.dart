// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_entity_type_entity.dart';
import 'cx_entity_type_excluded_phrase.dart';

/// Input properties used for looking up and filtering CxEntityType resources.
class CxEntityTypeState {
  /// Represents kinds of entities.
  /// * AUTO_EXPANSION_MODE_UNSPECIFIED: Auto expansion disabled for the entity.
  /// * AUTO_EXPANSION_MODE_DEFAULT: Allows an agent to recognize values that have not been explicitly listed in the entity.
  /// Possible values are: `AUTO_EXPANSION_MODE_DEFAULT`, `AUTO_EXPANSION_MODE_UNSPECIFIED`.
  final pulumi.Input<String>? autoExpansionMode;
  /// The human-readable name of the entity type, unique within the agent.
  final pulumi.Input<String>? displayName;
  /// Enables fuzzy entity extraction during classification.
  final pulumi.Input<bool>? enableFuzzyExtraction;
  /// The collection of entity entries associated with the entity type.
  /// Structure is documented below.
  final pulumi.Input<List<CxEntityTypeEntity>>? entities;
  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.
  /// If the kind of entity type is KIND_MAP, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  /// Structure is documented below.
  final pulumi.Input<List<CxEntityTypeExcludedPhrase>>? excludedPhrases;
  /// Indicates whether the entity type can be automatically expanded.
  /// * KIND_MAP: Map entity types allow mapping of a group of synonyms to a canonical value.
  /// * KIND_LIST: List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).
  /// * KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values.
  /// Possible values are: `KIND_MAP`, `KIND_LIST`, `KIND_REGEXP`.
  final pulumi.Input<String>? kind;
  /// The language of the following fields in entityType:
  /// EntityType.entities.value
  /// EntityType.entities.synonyms
  /// EntityType.excluded_phrases.value
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  /// The unique identifier of the entity type.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/entityTypes/<Entity Type ID>.
  final pulumi.Input<String>? name;
  /// The agent to create a entity type for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;
  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  final pulumi.Input<bool>? redact;

  /// Creates a new [CxEntityTypeState].
  /// [autoExpansionMode] Represents kinds of entities.
  /// [displayName] The human-readable name of the entity type, unique within the agent.
  /// [enableFuzzyExtraction] Enables fuzzy entity extraction during classification.
  /// [entities] The collection of entity entries associated with the entity type.
  /// [excludedPhrases] Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.
  /// [kind] Indicates whether the entity type can be automatically expanded.
  /// [languageCode] The language of the following fields in entityType:
  /// [name] The unique identifier of the entity type.
  /// [parent] The agent to create a entity type for.
  /// [redact] Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  CxEntityTypeState({
    this.autoExpansionMode,
    this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    this.excludedPhrases,
    this.kind,
    this.languageCode,
    this.name,
    this.parent,
    this.redact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoExpansionMode': ?autoExpansionMode,
      'displayName': ?displayName,
      'enableFuzzyExtraction': ?enableFuzzyExtraction,
      'entities': ?pulumi.Input.mapOptionalInputValue<List<CxEntityTypeEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<CxEntityTypeEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedPhrases': ?pulumi.Input.mapOptionalInputValue<List<CxEntityTypeExcludedPhrase>, List<Map<String, dynamic>>>(excludedPhrases, (value) => pulumi.Input.encodeList<CxEntityTypeExcludedPhrase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'languageCode': ?languageCode,
      'name': ?name,
      'parent': ?parent,
      'redact': ?redact,
    };
  }

  factory CxEntityTypeState.fromMap(Map<String, dynamic> map) {
    return CxEntityTypeState(
      autoExpansionMode: map['autoExpansionMode'] == null ? null : (map['autoExpansionMode'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      enableFuzzyExtraction: map['enableFuzzyExtraction'] == null ? null : (map['enableFuzzyExtraction'] as bool).input(),
      entities: map['entities'] == null ? null : (pulumi.Input.decodeList<CxEntityTypeEntity>(map['entities'], (value) => CxEntityTypeEntity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      excludedPhrases: map['excludedPhrases'] == null ? null : (pulumi.Input.decodeList<CxEntityTypeExcludedPhrase>(map['excludedPhrases'], (value) => CxEntityTypeExcludedPhrase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      redact: map['redact'] == null ? null : (map['redact'] as bool).input(),
    );
  }
}

