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
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      anyOf: (() { final guardedValue = map['anyOf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defs: (() { final guardedValue = map['defs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enums: (() { final guardedValue = map['enums']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maximum: (() { final guardedValue = map['maximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minItems: (() { final guardedValue = map['minItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimum: (() { final guardedValue = map['minimum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      nullable: (() { final guardedValue = map['nullable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefixItems: (() { final guardedValue = map['prefixItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireds: (() { final guardedValue = map['requireds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      uniqueItems: (() { final guardedValue = map['uniqueItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

