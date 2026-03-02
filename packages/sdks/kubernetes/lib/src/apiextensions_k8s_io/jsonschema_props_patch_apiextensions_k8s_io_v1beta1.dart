// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_documentation_patch_apiextensions_k8s_io_v1beta1.dart';
import 'jsonschema_props_apiextensions_k8s_io_v1beta1.dart';

/// JSONSchemaProps is a JSON-Schema following Specification Draft 4 (http://json-schema.org/).
class JSONSchemaPropsPatchApiextensionsK8sIoV1beta1 {
  final pulumi.Input<String>? ref;
  final pulumi.Input<String>? schema;
  final pulumi.Input<JSONSchemaPropsApiextensionsK8sIoV1beta1>? additionalItems;
  final pulumi.Input<JSONSchemaPropsApiextensionsK8sIoV1beta1>? additionalProperties;
  final pulumi.Input<List<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1>>? allOf;
  final pulumi.Input<List<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1>>? anyOf;
  /// default is a default value for undefined object fields. Defaulting is a beta feature under the CustomResourceDefaulting feature gate. CustomResourceDefinitions with defaults must be created using the v1 (or newer) CustomResourceDefinition API.
  final pulumi.Input<dynamic>? default_;
  final pulumi.Input<Map<String, JSONSchemaPropsApiextensionsK8sIoV1beta1>>? definitions;
  final pulumi.Input<Map<String, JSONSchemaPropsApiextensionsK8sIoV1beta1>>? dependencies;
  final pulumi.Input<String>? description;
  final pulumi.Input<List<dynamic>>? enum_;
  final pulumi.Input<dynamic>? example;
  final pulumi.Input<bool>? exclusiveMaximum;
  final pulumi.Input<bool>? exclusiveMinimum;
  final pulumi.Input<ExternalDocumentationPatchApiextensionsK8sIoV1beta1>? externalDocs;
  /// format is an OpenAPI v3 format string. Unknown formats are ignored. The following formats are validated:
  ///
  /// - bsonobjectid: a bson object ID, i.e. a 24 characters hex string - uri: an URI as parsed by Golang net/url.ParseRequestURI - email: an email address as parsed by Golang net/mail.ParseAddress - hostname: a valid representation for an Internet host name, as defined by RFC 1034, section 3.1 [RFC1034]. - ipv4: an IPv4 IP as parsed by Golang net.ParseIP - ipv6: an IPv6 IP as parsed by Golang net.ParseIP - cidr: a CIDR as parsed by Golang net.ParseCIDR - mac: a MAC address as parsed by Golang net.ParseMAC - uuid: an UUID that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid3: an UUID3 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?3[0-9a-f]{3}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid4: an UUID4 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - uuid5: an UUID5 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?5[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - isbn: an ISBN10 or ISBN13 number string like "0321751043" or "978-0321751041" - isbn10: an ISBN10 number string like "0321751043" - isbn13: an ISBN13 number string like "978-0321751041" - creditcard: a credit card number defined by the regex ^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$ with any non digit characters mixed in - ssn: a U.S. social security number following the regex ^\d{3}[- ]?\d{2}[- ]?\d{4}$ - hexcolor: an hexadecimal color code like "#FFFFFF: following the regex ^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$ - rgbcolor: an RGB color code like rgb like "rgb(255,255,2559" - byte: base64 encoded binary data - password: any kind of string - date: a date string like "2006-01-02" as defined by full-date in RFC3339 - duration: a duration string like "22 ns" as parsed by Golang time.ParseDuration or compatible with Scala duration format - datetime: a date time string like "2014-12-15T19:30:20.000Z" as defined by date-time in RFC3339.
  final pulumi.Input<String>? format;
  final pulumi.Input<String>? id;
  final pulumi.Input<JSONSchemaPropsApiextensionsK8sIoV1beta1>? items;
  final pulumi.Input<int>? maxItems;
  final pulumi.Input<int>? maxLength;
  final pulumi.Input<int>? maxProperties;
  final pulumi.Input<double>? maximum;
  final pulumi.Input<int>? minItems;
  final pulumi.Input<int>? minLength;
  final pulumi.Input<int>? minProperties;
  final pulumi.Input<double>? minimum;
  final pulumi.Input<double>? multipleOf;
  final pulumi.Input<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1>? not;
  final pulumi.Input<bool>? nullable;
  final pulumi.Input<List<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1>>? oneOf;
  final pulumi.Input<String>? pattern;
  final pulumi.Input<Map<String, JSONSchemaPropsApiextensionsK8sIoV1beta1>>? patternProperties;
  final pulumi.Input<Map<String, JSONSchemaPropsApiextensionsK8sIoV1beta1>>? properties;
  final pulumi.Input<List<String>>? required;
  final pulumi.Input<String>? title;
  final pulumi.Input<String>? type;
  final pulumi.Input<bool>? uniqueItems;
  /// x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).
  final pulumi.Input<bool>? xKubernetesEmbeddedResource;
  /// x-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:
  ///
  /// 1) anyOf:
  /// - type: integer
  /// - type: string
  /// 2) allOf:
  /// - anyOf:
  /// - type: integer
  /// - type: string
  /// - ... zero or more
  final pulumi.Input<bool>? xKubernetesIntOrString;
  /// x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.
  ///
  /// This tag MUST only be used on lists that have the "x-kubernetes-list-type" extension set to "map". Also, the values specified for this attribute must be a scalar typed field of the child structure (no nesting is supported).
  final pulumi.Input<List<String>>? xKubernetesListMapKeys;
  /// x-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:
  ///
  /// 1) `atomic`: the list is treated as a single entity, like a scalar.
  /// Atomic lists will be entirely replaced when updated. This extension
  /// may be used on any type of list (struct, scalar, ...).
  /// 2) `set`:
  /// Sets are lists that must not have multiple items with the same value. Each
  /// value must be a scalar, an object with x-kubernetes-map-type `atomic` or an
  /// array with x-kubernetes-list-type `atomic`.
  /// 3) `map`:
  /// These lists are like maps in that their elements have a non-index key
  /// used to identify them. Order is preserved upon merge. The map tag
  /// must only be used on a list with elements of type object.
  /// Defaults to atomic for arrays.
  final pulumi.Input<String>? xKubernetesListType;
  /// x-kubernetes-map-type annotates an object to further describe its topology. This extension must only be used when type is object and may have 2 possible values:
  ///
  /// 1) `granular`:
  /// These maps are actual maps (key-value pairs) and each fields are independent
  /// from each other (they can each be manipulated by separate actors). This is
  /// the default behaviour for all maps.
  /// 2) `atomic`: the list is treated as a single entity, like a scalar.
  /// Atomic maps will be entirely replaced when updated.
  final pulumi.Input<String>? xKubernetesMapType;
  /// x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.
  final pulumi.Input<bool>? xKubernetesPreserveUnknownFields;

  /// Creates a new [JSONSchemaPropsPatchApiextensionsK8sIoV1beta1].
  /// [ref] Optional.
  /// [schema] Optional.
  /// [additionalItems] Optional.
  /// [additionalProperties] Optional.
  /// [allOf] Optional.
  /// [anyOf] Optional.
  /// [default_] default is a default value for undefined object fields. Defaulting is a beta feature under the CustomResourceDefaulting feature gate. CustomResourceDefinitions with defaults must be created using the v1 (or newer) CustomResourceDefinition API.
  /// [definitions] Optional.
  /// [dependencies] Optional.
  /// [description] Optional.
  /// [enum_] Optional.
  /// [example] Optional.
  /// [exclusiveMaximum] Optional.
  /// [exclusiveMinimum] Optional.
  /// [externalDocs] Optional.
  /// [format] format is an OpenAPI v3 format string. Unknown formats are ignored. The following formats are validated:
  /// [id] Optional.
  /// [items] Optional.
  /// [maxItems] Optional.
  /// [maxLength] Optional.
  /// [maxProperties] Optional.
  /// [maximum] Optional.
  /// [minItems] Optional.
  /// [minLength] Optional.
  /// [minProperties] Optional.
  /// [minimum] Optional.
  /// [multipleOf] Optional.
  /// [not] Optional.
  /// [nullable] Optional.
  /// [oneOf] Optional.
  /// [pattern] Optional.
  /// [patternProperties] Optional.
  /// [properties] Optional.
  /// [required] Optional.
  /// [title] Optional.
  /// [type] Optional.
  /// [uniqueItems] Optional.
  /// [xKubernetesEmbeddedResource] x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).
  /// [xKubernetesIntOrString] x-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:
  /// [xKubernetesListMapKeys] x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.
  /// [xKubernetesListType] x-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:
  /// [xKubernetesMapType] x-kubernetes-map-type annotates an object to further describe its topology. This extension must only be used when type is object and may have 2 possible values:
  /// [xKubernetesPreserveUnknownFields] x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.
  JSONSchemaPropsPatchApiextensionsK8sIoV1beta1({
    this.ref,
    this.schema,
    this.additionalItems,
    this.additionalProperties,
    this.allOf,
    this.anyOf,
    this.default_,
    this.definitions,
    this.dependencies,
    this.description,
    this.enum_,
    this.example,
    this.exclusiveMaximum,
    this.exclusiveMinimum,
    this.externalDocs,
    this.format,
    this.id,
    this.items,
    this.maxItems,
    this.maxLength,
    this.maxProperties,
    this.maximum,
    this.minItems,
    this.minLength,
    this.minProperties,
    this.minimum,
    this.multipleOf,
    this.not,
    this.nullable,
    this.oneOf,
    this.pattern,
    this.patternProperties,
    this.properties,
    this.required,
    this.title,
    this.type,
    this.uniqueItems,
    this.xKubernetesEmbeddedResource,
    this.xKubernetesIntOrString,
    this.xKubernetesListMapKeys,
    this.xKubernetesListType,
    this.xKubernetesMapType,
    this.xKubernetesPreserveUnknownFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$ref': ?ref,
      '\$schema': ?schema,
      'additionalItems': ?pulumi.Input.mapOptionalInputValue<JSONSchemaPropsApiextensionsK8sIoV1beta1, Map<String, dynamic>>(additionalItems, (value) => value.toMap()),
      'additionalProperties': ?pulumi.Input.mapOptionalInputValue<JSONSchemaPropsApiextensionsK8sIoV1beta1, Map<String, dynamic>>(additionalProperties, (value) => value.toMap()),
      'allOf': ?pulumi.Input.mapOptionalInputValue<List<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1>, List<Map<String, dynamic>>>(allOf, (value) => pulumi.Input.encodeList<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'anyOf': ?pulumi.Input.mapOptionalInputValue<List<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1>, List<Map<String, dynamic>>>(anyOf, (value) => pulumi.Input.encodeList<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'default': ?default_,
      'definitions': ?pulumi.Input.mapOptionalInputValue<Map<String, JSONSchemaPropsApiextensionsK8sIoV1beta1>, Map<String, Map<String, dynamic>>>(definitions, (value) => pulumi.Input.encodeMapValues<JSONSchemaPropsApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dependencies': ?pulumi.Input.mapOptionalInputValue<Map<String, JSONSchemaPropsApiextensionsK8sIoV1beta1>, Map<String, Map<String, dynamic>>>(dependencies, (value) => pulumi.Input.encodeMapValues<JSONSchemaPropsApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enum': ?enum_,
      'example': ?example,
      'exclusiveMaximum': ?exclusiveMaximum,
      'exclusiveMinimum': ?exclusiveMinimum,
      'externalDocs': ?pulumi.Input.mapOptionalInputValue<ExternalDocumentationPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(externalDocs, (value) => value.toMap()),
      'format': ?format,
      'id': ?id,
      'items': ?pulumi.Input.mapOptionalInputValue<JSONSchemaPropsApiextensionsK8sIoV1beta1, Map<String, dynamic>>(items, (value) => value.toMap()),
      'maxItems': ?maxItems,
      'maxLength': ?maxLength,
      'maxProperties': ?maxProperties,
      'maximum': ?maximum,
      'minItems': ?minItems,
      'minLength': ?minLength,
      'minProperties': ?minProperties,
      'minimum': ?minimum,
      'multipleOf': ?multipleOf,
      'not': ?pulumi.Input.mapOptionalInputValue<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(not, (value) => value.toMap()),
      'nullable': ?nullable,
      'oneOf': ?pulumi.Input.mapOptionalInputValue<List<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1>, List<Map<String, dynamic>>>(oneOf, (value) => pulumi.Input.encodeList<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pattern': ?pattern,
      'patternProperties': ?pulumi.Input.mapOptionalInputValue<Map<String, JSONSchemaPropsApiextensionsK8sIoV1beta1>, Map<String, Map<String, dynamic>>>(patternProperties, (value) => pulumi.Input.encodeMapValues<JSONSchemaPropsApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'properties': ?pulumi.Input.mapOptionalInputValue<Map<String, JSONSchemaPropsApiextensionsK8sIoV1beta1>, Map<String, Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeMapValues<JSONSchemaPropsApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'required': ?required,
      'title': ?title,
      'type': ?type,
      'uniqueItems': ?uniqueItems,
      'x_kubernetes_embedded_resource': ?xKubernetesEmbeddedResource,
      'x_kubernetes_int_or_string': ?xKubernetesIntOrString,
      'x_kubernetes_list_map_keys': ?xKubernetesListMapKeys,
      'x_kubernetes_list_type': ?xKubernetesListType,
      'x_kubernetes_map_type': ?xKubernetesMapType,
      'x_kubernetes_preserve_unknown_fields': ?xKubernetesPreserveUnknownFields,
    };
  }

  factory JSONSchemaPropsPatchApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return JSONSchemaPropsPatchApiextensionsK8sIoV1beta1(
      ref: map['\$ref'] == null ? null : (map['\$ref'] as String).input(),
      schema: map['\$schema'] == null ? null : (map['\$schema'] as String).input(),
      additionalItems: map['additionalItems'] == null ? null : (JSONSchemaPropsApiextensionsK8sIoV1beta1.fromMap((map['additionalItems'] as Map).cast<String, dynamic>())).input(),
      additionalProperties: map['additionalProperties'] == null ? null : (JSONSchemaPropsApiextensionsK8sIoV1beta1.fromMap((map['additionalProperties'] as Map).cast<String, dynamic>())).input(),
      allOf: map['allOf'] == null ? null : (pulumi.Input.decodeList<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1>(map['allOf'], (value) => JSONSchemaPropsPatchApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      anyOf: map['anyOf'] == null ? null : (pulumi.Input.decodeList<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1>(map['anyOf'], (value) => JSONSchemaPropsPatchApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      default_: map['default'] == null ? null : (map['default']).input(),
      definitions: map['definitions'] == null ? null : (pulumi.Input.decodeMapValues<JSONSchemaPropsApiextensionsK8sIoV1beta1>(map['definitions'], (value) => JSONSchemaPropsApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dependencies: map['dependencies'] == null ? null : (pulumi.Input.decodeMapValues<JSONSchemaPropsApiextensionsK8sIoV1beta1>(map['dependencies'], (value) => JSONSchemaPropsApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enum_: map['enum'] == null ? null : ((map['enum'] as List).cast<dynamic>()).input(),
      example: map['example'] == null ? null : (map['example']).input(),
      exclusiveMaximum: map['exclusiveMaximum'] == null ? null : (map['exclusiveMaximum'] as bool).input(),
      exclusiveMinimum: map['exclusiveMinimum'] == null ? null : (map['exclusiveMinimum'] as bool).input(),
      externalDocs: map['externalDocs'] == null ? null : (ExternalDocumentationPatchApiextensionsK8sIoV1beta1.fromMap((map['externalDocs'] as Map).cast<String, dynamic>())).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      items: map['items'] == null ? null : (JSONSchemaPropsApiextensionsK8sIoV1beta1.fromMap((map['items'] as Map).cast<String, dynamic>())).input(),
      maxItems: map['maxItems'] == null ? null : (map['maxItems'] as int).input(),
      maxLength: map['maxLength'] == null ? null : (map['maxLength'] as int).input(),
      maxProperties: map['maxProperties'] == null ? null : (map['maxProperties'] as int).input(),
      maximum: map['maximum'] == null ? null : (map['maximum'] as double).input(),
      minItems: map['minItems'] == null ? null : (map['minItems'] as int).input(),
      minLength: map['minLength'] == null ? null : (map['minLength'] as int).input(),
      minProperties: map['minProperties'] == null ? null : (map['minProperties'] as int).input(),
      minimum: map['minimum'] == null ? null : (map['minimum'] as double).input(),
      multipleOf: map['multipleOf'] == null ? null : (map['multipleOf'] as double).input(),
      not: map['not'] == null ? null : (JSONSchemaPropsPatchApiextensionsK8sIoV1beta1.fromMap((map['not'] as Map).cast<String, dynamic>())).input(),
      nullable: map['nullable'] == null ? null : (map['nullable'] as bool).input(),
      oneOf: map['oneOf'] == null ? null : (pulumi.Input.decodeList<JSONSchemaPropsPatchApiextensionsK8sIoV1beta1>(map['oneOf'], (value) => JSONSchemaPropsPatchApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pattern: map['pattern'] == null ? null : (map['pattern'] as String).input(),
      patternProperties: map['patternProperties'] == null ? null : (pulumi.Input.decodeMapValues<JSONSchemaPropsApiextensionsK8sIoV1beta1>(map['patternProperties'], (value) => JSONSchemaPropsApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      properties: map['properties'] == null ? null : (pulumi.Input.decodeMapValues<JSONSchemaPropsApiextensionsK8sIoV1beta1>(map['properties'], (value) => JSONSchemaPropsApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      required: map['required'] == null ? null : ((map['required'] as List).cast<String>()).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      uniqueItems: map['uniqueItems'] == null ? null : (map['uniqueItems'] as bool).input(),
      xKubernetesEmbeddedResource: map['x_kubernetes_embedded_resource'] == null ? null : (map['x_kubernetes_embedded_resource'] as bool).input(),
      xKubernetesIntOrString: map['x_kubernetes_int_or_string'] == null ? null : (map['x_kubernetes_int_or_string'] as bool).input(),
      xKubernetesListMapKeys: map['x_kubernetes_list_map_keys'] == null ? null : ((map['x_kubernetes_list_map_keys'] as List).cast<String>()).input(),
      xKubernetesListType: map['x_kubernetes_list_type'] == null ? null : (map['x_kubernetes_list_type'] as String).input(),
      xKubernetesMapType: map['x_kubernetes_map_type'] == null ? null : (map['x_kubernetes_map_type'] as String).input(),
      xKubernetesPreserveUnknownFields: map['x_kubernetes_preserve_unknown_fields'] == null ? null : (map['x_kubernetes_preserve_unknown_fields'] as bool).input(),
    );
  }
}

