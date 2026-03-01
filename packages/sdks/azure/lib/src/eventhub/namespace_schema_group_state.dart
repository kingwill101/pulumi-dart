// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NamespaceSchemaGroup resources.
class NamespaceSchemaGroupState {
  /// Specifies the name of this schema group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the EventHub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? namespaceId;
  /// Specifies the compatibility of this schema group. Possible values are `None`, `Backward`, `Forward`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? schemaCompatibility;
  /// Specifies the Type of this schema group. Possible values are `Avro`, `Unknown` and `Json`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When `schema_type` is specified as `Json`, `schema_compatibility` must be set to `None`.
  final pulumi.Input<String>? schemaType;

  /// Creates a new [NamespaceSchemaGroupState].
  /// [name] Specifies the name of this schema group. Changing this forces a new resource to be created.
  /// [namespaceId] Specifies the ID of the EventHub Namespace. Changing this forces a new resource to be created.
  /// [schemaCompatibility] Specifies the compatibility of this schema group. Possible values are `None`, `Backward`, `Forward`. Changing this forces a new resource to be created.
  /// [schemaType] Specifies the Type of this schema group. Possible values are `Avro`, `Unknown` and `Json`. Changing this forces a new resource to be created.
  NamespaceSchemaGroupState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespaceId,
    pulumi.Output<String>? schemaCompatibility,
    pulumi.Output<String>? schemaType,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      schemaCompatibility = pulumi.Input.asOptionalInput<String>(schemaCompatibility),
      schemaType = pulumi.Input.asOptionalInput<String>(schemaType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespaceId': ?namespaceId,
      'schemaCompatibility': ?schemaCompatibility,
      'schemaType': ?schemaType,
    };
  }

  factory NamespaceSchemaGroupState.fromMap(Map<String, dynamic> map) {
    return NamespaceSchemaGroupState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceId: map['namespaceId'] == null ? null : pulumi.Output.create<String>(map['namespaceId'] as String),
      schemaCompatibility: map['schemaCompatibility'] == null ? null : pulumi.Output.create<String>(map['schemaCompatibility'] as String),
      schemaType: map['schemaType'] == null ? null : pulumi.Output.create<String>(map['schemaType'] as String),
    );
  }
}

