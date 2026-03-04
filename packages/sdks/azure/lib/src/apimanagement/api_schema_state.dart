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
    this.apiManagementName,
    this.apiName,
    this.components,
    this.contentType,
    this.definitions,
    this.resourceGroupName,
    this.schemaId,
    this.value,
  });

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
      apiManagementName: (() {
        final guardedValue = map['apiManagementName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apiName: (() {
        final guardedValue = map['apiName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      components: (() {
        final guardedValue = map['components'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contentType: (() {
        final guardedValue = map['contentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      definitions: (() {
        final guardedValue = map['definitions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaId: (() {
        final guardedValue = map['schemaId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
