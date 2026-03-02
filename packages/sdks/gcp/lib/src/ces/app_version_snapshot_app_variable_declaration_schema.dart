// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppVariableDeclarationSchema {
  /// (Output)
  /// Optional. Defines the schema for additional properties allowed in an object.
  /// The value must be a valid JSON string representing the Schema object.
  /// (Note: OpenAPI also allows a boolean, this definition expects a Schema JSON).
  final pulumi.Input<String>? additionalProperties;
  /// (Output)
  /// Optional. The instance value should be valid against at least one of the schemas in this list.
  final pulumi.Input<String>? anyOf;
  /// (Output)
  /// Optional. Default value of the data. Represents a dynamically typed value
  /// which can be either null, a number, a string, a boolean, a struct,
  /// or a list of values. The provided default value must be compatible
  /// with the defined 'type' and other schema constraints.
  final pulumi.Input<String>? default_;
  /// (Output)
  /// A map of definitions for use by ref. Only allowed at the root of the schema.
  final pulumi.Input<String>? defs;
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// (Output)
  /// Possible values of the element of primitive type with enum format.
  /// Examples:
  /// 1. We can define direction as :
  /// {type:STRING, format:enum, enum:["EAST", NORTH", "SOUTH", "WEST"]}
  /// 2. We can define apartment number as :
  /// {type:INTEGER, format:enum, enum:["101", "201", "301"]}
  final pulumi.Input<List<String>>? enums;
  /// (Output)
  /// Schema of the elements of Type.ARRAY.
  final pulumi.Input<String>? items;
  /// (Output)
  /// Indicates if the value may be null.
  final pulumi.Input<bool>? nullable;
  /// (Output)
  /// Optional. Schemas of initial elements of Type.ARRAY.
  final pulumi.Input<String>? prefixItems;
  /// (Output)
  /// Properties of Type.OBJECT.
  final pulumi.Input<String>? properties;
  /// (Output)
  /// Allows indirect references between schema nodes. The value should be a
  /// valid reference to a child of the root `defs`.
  /// For example, the following schema defines a reference to a schema node
  /// named "Pet":
  /// type: object
  /// properties:
  /// pet:
  /// ref: #/defs/Pet
  /// defs:
  /// Pet:
  /// type: object
  /// properties:
  /// name:
  /// type: string
  /// The value of the "pet" property is a reference to the schema node
  /// named "Pet".
  /// See details in
  /// https://json-schema.org/understanding-json-schema/structuring.
  final pulumi.Input<String>? ref;
  /// (Output)
  /// Required properties of Type.OBJECT.
  final pulumi.Input<List<String>>? requireds;
  /// (Output)
  /// The type of the data store. This field is readonly and populated by the
  /// server.
  /// Possible values:
  /// PUBLIC_WEB
  /// UNSTRUCTURED
  /// FAQ
  /// CONNECTOR
  final pulumi.Input<String>? type;
  /// (Output)
  /// Indicate the items in the array must be unique. Only applies to TYPE.ARRAY.
  final pulumi.Input<bool>? uniqueItems;

  /// Creates a new [AppVersionSnapshotAppVariableDeclarationSchema].
  /// [additionalProperties] (Output)
  /// [anyOf] (Output)
  /// [default_] (Output)
  /// [defs] (Output)
  /// [description] The description of the app version.
  /// [enums] (Output)
  /// [items] (Output)
  /// [nullable] (Output)
  /// [prefixItems] (Output)
  /// [properties] (Output)
  /// [ref] (Output)
  /// [requireds] (Output)
  /// [type] (Output)
  /// [uniqueItems] (Output)
  AppVersionSnapshotAppVariableDeclarationSchema({
    this.additionalProperties,
    this.anyOf,
    this.default_,
    this.defs,
    this.description,
    this.enums,
    this.items,
    this.nullable,
    this.prefixItems,
    this.properties,
    this.ref,
    this.requireds,
    this.type,
    this.uniqueItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'anyOf': ?anyOf,
      'default': ?default_,
      'defs': ?defs,
      'description': ?description,
      'enums': ?enums,
      'items': ?items,
      'nullable': ?nullable,
      'prefixItems': ?prefixItems,
      'properties': ?properties,
      'ref': ?ref,
      'requireds': ?requireds,
      'type': ?type,
      'uniqueItems': ?uniqueItems,
    };
  }

  factory AppVersionSnapshotAppVariableDeclarationSchema.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppVariableDeclarationSchema(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as String).input(),
      anyOf: map['anyOf'] == null ? null : (map['anyOf'] as String).input(),
      default_: map['default'] == null ? null : (map['default'] as String).input(),
      defs: map['defs'] == null ? null : (map['defs'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enums: map['enums'] == null ? null : ((map['enums'] as List).cast<String>()).input(),
      items: map['items'] == null ? null : (map['items'] as String).input(),
      nullable: map['nullable'] == null ? null : (map['nullable'] as bool).input(),
      prefixItems: map['prefixItems'] == null ? null : (map['prefixItems'] as String).input(),
      properties: map['properties'] == null ? null : (map['properties'] as String).input(),
      ref: map['ref'] == null ? null : (map['ref'] as String).input(),
      requireds: map['requireds'] == null ? null : ((map['requireds'] as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      uniqueItems: map['uniqueItems'] == null ? null : (map['uniqueItems'] as bool).input(),
    );
  }
}

