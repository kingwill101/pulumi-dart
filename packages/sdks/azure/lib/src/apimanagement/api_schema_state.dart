// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiSchema resources.
class ApiSchemaState {
  /// The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The name of the API within the API Management Service where this API Schema should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiName;
  /// Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only.
  final pulumi.Input<String>? components;
  /// The content type of the API Schema.
  final pulumi.Input<String>? contentType;
  /// Types definitions. Used for Swagger/OpenAPI v1 schemas only.
  final pulumi.Input<String>? definitions;
  /// The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A unique identifier for this API Schema. Changing this forces a new resource to be created.
  final pulumi.Input<String>? schemaId;
  /// The JSON escaped string defining the document representing the Schema.
  final pulumi.Input<String>? value;

  /// Creates a new [ApiSchemaState].
  /// [apiManagementName] The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  /// [apiName] The name of the API within the API Management Service where this API Schema should be created. Changing this forces a new resource to be created.
  /// [components] Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only.
  /// [contentType] The content type of the API Schema.
  /// [definitions] Types definitions. Used for Swagger/OpenAPI v1 schemas only.
  /// [resourceGroupName] The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [schemaId] A unique identifier for this API Schema. Changing this forces a new resource to be created.
  /// [value] The JSON escaped string defining the document representing the Schema.
  ApiSchemaState({
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? apiName,
    pulumi.Output<String>? components,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? definitions,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? schemaId,
    pulumi.Output<String>? value,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      apiName = pulumi.Input.asOptionalInput<String>(apiName),
      components = pulumi.Input.asOptionalInput<String>(components),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      definitions = pulumi.Input.asOptionalInput<String>(definitions),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      schemaId = pulumi.Input.asOptionalInput<String>(schemaId),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'apiName': ?apiName,
      'components': ?components,
      'contentType': ?contentType,
      'definitions': ?definitions,
      'resourceGroupName': ?resourceGroupName,
      'schemaId': ?schemaId,
      'value': ?value,
    };
  }

  factory ApiSchemaState.fromMap(Map<String, dynamic> map) {
    return ApiSchemaState(
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      apiName: map['apiName'] == null ? null : pulumi.Output.create<String>(map['apiName'] as String),
      components: map['components'] == null ? null : pulumi.Output.create<String>(map['components'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      definitions: map['definitions'] == null ? null : pulumi.Output.create<String>(map['definitions'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaId: map['schemaId'] == null ? null : pulumi.Output.create<String>(map['schemaId'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

