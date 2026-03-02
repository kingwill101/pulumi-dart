// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolClientFunctionResponse {
  /// Defines the schema for additional properties allowed in an object.
  /// The value must be a valid JSON string representing the Schema object.
  /// (Note: OpenAPI also allows a boolean, this definition expects a Schema JSON).
  final pulumi.Input<String>? additionalProperties;
  /// The instance value should be valid against at least one of the schemas in this list.
  final pulumi.Input<String>? anyOf;
  /// Default value of the data. Represents a dynamically typed value
  /// which can be either null, a number, a string, a boolean, a struct,
  /// or a list of values. The provided default value must be compatible
  /// with the defined 'type' and other schema constraints.
  final pulumi.Input<String>? default_;
  /// A map of definitions for use by ref. Only allowed at the root of the schema.
  final pulumi.Input<String>? defs;
  /// The description of the data.
  final pulumi.Input<String>? description;
  /// Possible values of the element of primitive type with enum format.
  /// Examples:
  /// 1. We can define direction as :
  /// {type:STRING, format:enum, enum:["EAST", NORTH", "SOUTH", "WEST"]}
  /// 2. We can define apartment number as :
  /// {type:INTEGER, format:enum, enum:["101", "201", "301"]}
  final pulumi.Input<List<String>>? enums;
  /// Schema of the elements of Type.ARRAY.
  final pulumi.Input<String>? items;
  /// Maximum number of the elements for Type.ARRAY. (int64 format)
  final pulumi.Input<int>? maxItems;
  /// Maximum value for Type.INTEGER and Type.NUMBER.
  final pulumi.Input<double>? maximum;
  /// Minimum number of the elements for Type.ARRAY. (int64 format)
  final pulumi.Input<int>? minItems;
  /// Minimum value for Type.INTEGER and Type.NUMBER.
  final pulumi.Input<double>? minimum;
  /// Indicates if the value may be null.
  final pulumi.Input<bool>? nullable;
  /// Schemas of initial elements of Type.ARRAY.
  final pulumi.Input<String>? prefixItems;
  /// Properties of Type.OBJECT.
  final pulumi.Input<String>? properties;
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
  /// Required properties of Type.OBJECT.
  final pulumi.Input<List<String>>? requireds;
  /// The title of the schema.
  final pulumi.Input<String>? title;
  /// The type of the data.
  /// Possible values:
  /// STRING
  /// INTEGER
  /// NUMBER
  /// BOOLEAN
  /// OBJECT
  /// ARRAY
  final pulumi.Input<String> type;
  /// Indicate the items in the array must be unique. Only applies to TYPE.ARRAY.
  final pulumi.Input<bool>? uniqueItems;

  /// Creates a new [ToolClientFunctionResponse].
  /// [additionalProperties] Defines the schema for additional properties allowed in an object.
  /// [anyOf] The instance value should be valid against at least one of the schemas in this list.
  /// [default_] Default value of the data. Represents a dynamically typed value
  /// [defs] A map of definitions for use by ref. Only allowed at the root of the schema.
  /// [description] The description of the data.
  /// [enums] Possible values of the element of primitive type with enum format.
  /// [items] Schema of the elements of Type.ARRAY.
  /// [maxItems] Maximum number of the elements for Type.ARRAY. (int64 format)
  /// [maximum] Maximum value for Type.INTEGER and Type.NUMBER.
  /// [minItems] Minimum number of the elements for Type.ARRAY. (int64 format)
  /// [minimum] Minimum value for Type.INTEGER and Type.NUMBER.
  /// [nullable] Indicates if the value may be null.
  /// [prefixItems] Schemas of initial elements of Type.ARRAY.
  /// [properties] Properties of Type.OBJECT.
  /// [ref] Allows indirect references between schema nodes. The value should be a
  /// [requireds] Required properties of Type.OBJECT.
  /// [title] The title of the schema.
  /// [type] The type of the data.
  /// [uniqueItems] Indicate the items in the array must be unique. Only applies to TYPE.ARRAY.
  ToolClientFunctionResponse({
    this.additionalProperties,
    this.anyOf,
    this.default_,
    this.defs,
    this.description,
    this.enums,
    this.items,
    this.maxItems,
    this.maximum,
    this.minItems,
    this.minimum,
    this.nullable,
    this.prefixItems,
    this.properties,
    this.ref,
    this.requireds,
    this.title,
    required this.type,
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
      'maxItems': ?maxItems,
      'maximum': ?maximum,
      'minItems': ?minItems,
      'minimum': ?minimum,
      'nullable': ?nullable,
      'prefixItems': ?prefixItems,
      'properties': ?properties,
      'ref': ?ref,
      'requireds': ?requireds,
      'title': ?title,
      'type': type,
      'uniqueItems': ?uniqueItems,
    };
  }

  factory ToolClientFunctionResponse.fromMap(Map<String, dynamic> map) {
    return ToolClientFunctionResponse(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as String).input(),
      anyOf: map['anyOf'] == null ? null : (map['anyOf'] as String).input(),
      default_: map['default'] == null ? null : (map['default'] as String).input(),
      defs: map['defs'] == null ? null : (map['defs'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enums: map['enums'] == null ? null : ((map['enums'] as List).cast<String>()).input(),
      items: map['items'] == null ? null : (map['items'] as String).input(),
      maxItems: map['maxItems'] == null ? null : (map['maxItems'] as int).input(),
      maximum: map['maximum'] == null ? null : (map['maximum'] as double).input(),
      minItems: map['minItems'] == null ? null : (map['minItems'] as int).input(),
      minimum: map['minimum'] == null ? null : (map['minimum'] as double).input(),
      nullable: map['nullable'] == null ? null : (map['nullable'] as bool).input(),
      prefixItems: map['prefixItems'] == null ? null : (map['prefixItems'] as String).input(),
      properties: map['properties'] == null ? null : (map['properties'] as String).input(),
      ref: map['ref'] == null ? null : (map['ref'] as String).input(),
      requireds: map['requireds'] == null ? null : ((map['requireds'] as List).cast<String>()).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
      type: (map['type'] as String).input(),
      uniqueItems: map['uniqueItems'] == null ? null : (map['uniqueItems'] as bool).input(),
    );
  }
}

