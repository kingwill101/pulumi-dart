// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxEntityTypeEntity {
  /// A collection of value synonyms. For example, if the entity type is vegetable, and value is scallions, a synonym could be green onions.
  /// For KIND_LIST entity types: This collection must contain exactly one synonym equal to value.
  final pulumi.Input<List<String>>? synonyms;
  /// The primary value associated with this entity entry. For example, if the entity type is vegetable, the value could be scallions.
  /// For KIND_MAP entity types: A canonical value to be used in place of synonyms.
  /// For KIND_LIST entity types: A string that can contain references to other entity types (with or without aliases).
  final pulumi.Input<String>? value;

  /// Creates a new [CxEntityTypeEntity].
  /// [synonyms] A collection of value synonyms. For example, if the entity type is vegetable, and value is scallions, a synonym could be green onions.
  /// [value] The primary value associated with this entity entry. For example, if the entity type is vegetable, the value could be scallions.
  const CxEntityTypeEntity({
    this.synonyms,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'synonyms': ?synonyms,
      'value': ?value,
    };
  }

  factory CxEntityTypeEntity.fromMap(Map<String, dynamic> map) {
    return CxEntityTypeEntity(
      synonyms: (() { final guardedValue = map['synonyms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
