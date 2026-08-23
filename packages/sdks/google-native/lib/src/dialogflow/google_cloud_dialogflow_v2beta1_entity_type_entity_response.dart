// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An **entity entry** for an associated entity type.
class GoogleCloudDialogflowV2beta1EntityTypeEntityResponse {
  /// A collection of value synonyms. For example, if the entity type is *vegetable*, and `value` is *scallions*, a synonym could be *green onions*. For `KIND_LIST` entity types: * This collection must contain exactly one synonym equal to `value`.
  final pulumi.Input<List<String>> synonyms;
  /// The primary value associated with this entity entry. For example, if the entity type is *vegetable*, the value could be *scallions*. For `KIND_MAP` entity types: * A reference value to be used in place of synonyms. For `KIND_LIST` entity types: * A string that can contain references to other entity types (with or without aliases).
  final pulumi.Input<String> value;

  /// Creates a new [GoogleCloudDialogflowV2beta1EntityTypeEntityResponse].
  /// [synonyms] A collection of value synonyms. For example, if the entity type is *vegetable*, and `value` is *scallions*, a synonym could be *green onions*. For `KIND_LIST` entity types: * This collection must contain exactly one synonym equal to `value`.
  /// [value] The primary value associated with this entity entry. For example, if the entity type is *vegetable*, the value could be *scallions*. For `KIND_MAP` entity types: * A reference value to be used in place of synonyms. For `KIND_LIST` entity types: * A string that can contain references to other entity types (with or without aliases).
  const GoogleCloudDialogflowV2beta1EntityTypeEntityResponse({
    required this.synonyms,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'synonyms': synonyms,
      'value': value,
    };
  }

  factory GoogleCloudDialogflowV2beta1EntityTypeEntityResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1EntityTypeEntityResponse(
      synonyms: pulumi.Input.fromValue((map['synonyms'] as List).cast<String>()),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
