// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A filter defining the entities that a mapping rule should be applied to. When more than one field is specified, the rule is applied only to entities which match all the fields.
class MappingRuleFilterResponse {
  /// Optional. The rule should be applied to specific entities defined by their fully qualified names.
  final pulumi.Input<List<String>> entities;

  /// Optional. The rule should be applied to entities whose non-qualified name contains the given string.
  final pulumi.Input<String> entityNameContains;

  /// Optional. The rule should be applied to entities whose non-qualified name starts with the given prefix.
  final pulumi.Input<String> entityNamePrefix;

  /// Optional. The rule should be applied to entities whose non-qualified name ends with the given suffix.
  final pulumi.Input<String> entityNameSuffix;

  /// Optional. The rule should be applied to entities whose parent entity (fully qualified name) matches the given value. For example, if the rule applies to a table entity, the expected value should be a schema (schema). If the rule applies to a column or index entity, the expected value can be either a schema (schema) or a table (schema.table)
  final pulumi.Input<String> parentEntity;

  /// Creates a new [MappingRuleFilterResponse].
  /// [entities] Optional. The rule should be applied to specific entities defined by their fully qualified names.
  /// [entityNameContains] Optional. The rule should be applied to entities whose non-qualified name contains the given string.
  /// [entityNamePrefix] Optional. The rule should be applied to entities whose non-qualified name starts with the given prefix.
  /// [entityNameSuffix] Optional. The rule should be applied to entities whose non-qualified name ends with the given suffix.
  /// [parentEntity] Optional. The rule should be applied to entities whose parent entity (fully qualified name) matches the given value. For example, if the rule applies to a table entity, the expected value should be a schema (schema). If the rule applies to a column or index entity, the expected value can be either a schema (schema) or a table (schema.table)
  MappingRuleFilterResponse({
    required this.entities,
    required this.entityNameContains,
    required this.entityNamePrefix,
    required this.entityNameSuffix,
    required this.parentEntity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entities': entities,
      'entityNameContains': entityNameContains,
      'entityNamePrefix': entityNamePrefix,
      'entityNameSuffix': entityNameSuffix,
      'parentEntity': parentEntity,
    };
  }

  factory MappingRuleFilterResponse.fromMap(Map<String, dynamic> map) {
    return MappingRuleFilterResponse(
      entities: pulumi.Input.fromValue(
        (map['entities'] as List).cast<String>(),
      ),
      entityNameContains: pulumi.Input.fromValue(
        map['entityNameContains'] as String,
      ),
      entityNamePrefix: pulumi.Input.fromValue(
        map['entityNamePrefix'] as String,
      ),
      entityNameSuffix: pulumi.Input.fromValue(
        map['entityNameSuffix'] as String,
      ),
      parentEntity: pulumi.Input.fromValue(map['parentEntity'] as String),
    );
  }
}
