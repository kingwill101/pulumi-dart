// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_entity.dart';

/// Input properties used for looking up and filtering EntityType resources.
class EntityTypeState {
  /// The name of this entity type to be displayed on the console.
  final pulumi.Input<String>? displayName;
  /// Enables fuzzy entity extraction during classification.
  final pulumi.Input<bool>? enableFuzzyExtraction;
  /// The collection of entity entries associated with the entity type.
  /// Structure is documented below.
  final pulumi.Input<List<EntityTypeEntity>>? entities;
  /// Indicates the kind of entity type.
  /// * KIND_MAP: Map entity types allow mapping of a group of synonyms to a reference value.
  /// * KIND_LIST: List entity types contain a set of entries that do not map to reference values. However, list entity
  /// types can contain references to other entity types (with or without aliases).
  /// * KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values.
  /// Possible values are: `KIND_MAP`, `KIND_LIST`, `KIND_REGEXP`.
  final pulumi.Input<String>? kind;
  /// The unique identifier of the entity type.
  /// Format: projects/<Project ID>/agent/entityTypes/<Entity type ID>.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [EntityTypeState].
  /// [displayName] The name of this entity type to be displayed on the console.
  /// [enableFuzzyExtraction] Enables fuzzy entity extraction during classification.
  /// [entities] The collection of entity entries associated with the entity type.
  /// [kind] Indicates the kind of entity type.
  /// [name] The unique identifier of the entity type.
  /// [project] The ID of the project in which the resource belongs.
  EntityTypeState({
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enableFuzzyExtraction,
    pulumi.Output<List<EntityTypeEntity>>? entities,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enableFuzzyExtraction = pulumi.Input.asOptionalInput<bool>(enableFuzzyExtraction),
      entities = pulumi.Input.asOptionalInput<List<EntityTypeEntity>>(entities),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'enableFuzzyExtraction': ?enableFuzzyExtraction,
      'entities': ?pulumi.Input.mapOptionalInputValue<List<EntityTypeEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<EntityTypeEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'name': ?name,
      'project': ?project,
    };
  }

  factory EntityTypeState.fromMap(Map<String, dynamic> map) {
    return EntityTypeState(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enableFuzzyExtraction: map['enableFuzzyExtraction'] == null ? null : pulumi.Output.create<bool>(map['enableFuzzyExtraction'] as bool),
      entities: map['entities'] == null ? null : pulumi.Output.create<List<EntityTypeEntity>>(pulumi.Input.decodeList<EntityTypeEntity>(map['entities'], (value) => EntityTypeEntity.fromMap((value as Map).cast<String, dynamic>()))),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

