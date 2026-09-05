// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NamespaceSchemaGroup resources.
class NamespaceSchemaGroupState {
  /// Specifies the name of this schema group. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the ID of the EventHub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? namespaceId;
  /// Specifies the compatibility of this schema group. Possible values are `None`, `Backward`, `Forward`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? schemaCompatibility;
  /// Specifies the Type of this schema group. Possible values are `Avro`, `Unknown` and `Json`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `schemaType` is specified as `Json`, `schemaCompatibility` must be set to `None`.
  final pulumi.Input<String?>? schemaType;

  /// Creates a new [NamespaceSchemaGroupState].
  /// [name] Specifies the name of this schema group. Changing this forces a new resource to be created.
  /// [namespaceId] Specifies the ID of the EventHub Namespace. Changing this forces a new resource to be created.
  /// [schemaCompatibility] Specifies the compatibility of this schema group. Possible values are `None`, `Backward`, `Forward`. Changing this forces a new resource to be created.
  /// [schemaType] Specifies the Type of this schema group. Possible values are `Avro`, `Unknown` and `Json`. Changing this forces a new resource to be created.
  const NamespaceSchemaGroupState({
    this.name,
    this.namespaceId,
    this.schemaCompatibility,
    this.schemaType,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaCompatibility: (() { final guardedValue = map['schemaCompatibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaType: (() { final guardedValue = map['schemaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
