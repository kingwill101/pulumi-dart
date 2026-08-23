// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_entity.dart';

/// {@template pulumi_diagflow_entity_type_entity_type_args_doc}
/// The set of arguments for EntityType.
/// {@endtemplate}
/// {@macro pulumi_diagflow_entity_type_entity_type_args_doc}
class EntityTypeArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The name of this entity type to be displayed on the console.
  /// [enableFuzzyExtraction] Enables fuzzy entity extraction during classification.
  /// [entities] The collection of entity entries associated with the entity type.
  /// [kind] Indicates the kind of entity type.
  /// [project] The ID of the project in which the resource belongs.
  const EntityTypeArgs({
    this.deletionPolicy,
    required this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    required this.kind,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'enableFuzzyExtraction': ?enableFuzzyExtraction,
      'entities': ?pulumi.Input.mapOptionalInputValue<List<EntityTypeEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<EntityTypeEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
      'project': ?project,
    };
  }

  factory EntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return EntityTypeArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enableFuzzyExtraction: (() { final guardedValue = map['enableFuzzyExtraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entities: (() { final guardedValue = map['entities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntityTypeEntity>(guardedValue, (value) => EntityTypeEntity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
