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
  /// Format: projects/&lt;Project ID&gt;/agent/entityTypes/&lt;Entity type ID&gt;.
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
    this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    this.kind,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'enableFuzzyExtraction': ?enableFuzzyExtraction,
      'entities':
          ?pulumi.Input.mapOptionalInputValue<
            List<EntityTypeEntity>,
            List<Map<String, dynamic>>
          >(
            entities,
            (value) =>
                pulumi.Input.encodeList<EntityTypeEntity, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'kind': ?kind,
      'name': ?name,
      'project': ?project,
    };
  }

  factory EntityTypeState.fromMap(Map<String, dynamic> map) {
    return EntityTypeState(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableFuzzyExtraction: (() {
        final guardedValue = map['enableFuzzyExtraction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      entities: (() {
        final guardedValue = map['entities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EntityTypeEntity>(
            guardedValue,
            (value) => EntityTypeEntity.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
