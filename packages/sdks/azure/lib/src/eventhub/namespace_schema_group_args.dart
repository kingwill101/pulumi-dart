// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_namespace_schema_group_namespace_schema_group_args_doc}
/// The set of arguments for NamespaceSchemaGroup.
/// {@endtemplate}
/// {@macro pulumi_eventhub_namespace_schema_group_namespace_schema_group_args_doc}
class NamespaceSchemaGroupArgs {
  /// Specifies the name of this schema group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the EventHub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> namespaceId;
  /// Specifies the compatibility of this schema group. Possible values are `None`, `Backward`, `Forward`. Changing this forces a new resource to be created.
  final pulumi.Input<String> schemaCompatibility;
  /// Specifies the Type of this schema group. Possible values are `Avro`, `Unknown` and `Json`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When `schema_type` is specified as `Json`, `schema_compatibility` must be set to `None`.
  final pulumi.Input<String> schemaType;

  /// Creates a new [NamespaceSchemaGroupArgs].
  /// [name] Specifies the name of this schema group. Changing this forces a new resource to be created.
  /// [namespaceId] Specifies the ID of the EventHub Namespace. Changing this forces a new resource to be created.
  /// [schemaCompatibility] Specifies the compatibility of this schema group. Possible values are `None`, `Backward`, `Forward`. Changing this forces a new resource to be created.
  /// [schemaType] Specifies the Type of this schema group. Possible values are `Avro`, `Unknown` and `Json`. Changing this forces a new resource to be created.
  NamespaceSchemaGroupArgs({
    this.name,
    required this.namespaceId,
    required this.schemaCompatibility,
    required this.schemaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespaceId': namespaceId,
      'schemaCompatibility': schemaCompatibility,
      'schemaType': schemaType,
    };
  }

  factory NamespaceSchemaGroupArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceSchemaGroupArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespaceId: (map['namespaceId'] as String).input(),
      schemaCompatibility: (map['schemaCompatibility'] as String).input(),
      schemaType: (map['schemaType'] as String).input(),
    );
  }
}

