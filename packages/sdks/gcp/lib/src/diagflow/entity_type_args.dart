// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_entity.dart';

/// {@template pulumi_diagflow_entity_type_entity_type_args_doc}
/// The set of arguments for EntityType.
/// {@endtemplate}
/// {@macro pulumi_diagflow_entity_type_entity_type_args_doc}
class EntityTypeArgs {
  /// The name of this entity type to be displayed on the console.
  final pulumi.Input<String> displayName;
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
  final pulumi.Input<String> kind;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [EntityTypeArgs].
  /// [displayName] The name of this entity type to be displayed on the console.
  /// [enableFuzzyExtraction] Enables fuzzy entity extraction during classification.
  /// [entities] The collection of entity entries associated with the entity type.
  /// [kind] Indicates the kind of entity type.
  /// [project] The ID of the project in which the resource belongs.
  EntityTypeArgs({
    required this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    required this.kind,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'enableFuzzyExtraction': ?enableFuzzyExtraction,
      'entities': ?pulumi.Input.mapOptionalInputValue<List<EntityTypeEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<EntityTypeEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
      'project': ?project,
    };
  }

  factory EntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return EntityTypeArgs(
      displayName: (map['displayName'] as String).input(),
      enableFuzzyExtraction: map['enableFuzzyExtraction'] == null ? null : (map['enableFuzzyExtraction']! as bool).input(),
      entities: map['entities'] == null ? null : (pulumi.Input.decodeList<EntityTypeEntity>(map['entities']!, (value) => EntityTypeEntity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kind: (map['kind'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

