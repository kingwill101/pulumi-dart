// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_response_representation_example.dart';
import 'api_operation_response_representation_form_parameter.dart';

class ApiOperationResponseRepresentation {
  /// The Content Type of this representation, such as `application/json`.
  final pulumi.Input<String> contentType;
  /// One or more `example` blocks as defined above.
  final pulumi.Input<List<ApiOperationResponseRepresentationExample>?>? examples;
  /// One or more `formParameter` block as defined above.
  ///
  /// &gt; **Note:** This is Required when `contentType` is set to `application/x-www-form-urlencoded` or `multipart/form-data`.
  final pulumi.Input<List<ApiOperationResponseRepresentationFormParameter>?>? formParameters;
  /// The ID of an API Management Schema which represents this Response.
  ///
  /// &gt; **Note:** This can only be specified when `contentType` is not set to `application/x-www-form-urlencoded` or `multipart/form-data`.
  final pulumi.Input<String?>? schemaId;
  /// The Type Name defined by the Schema.
  ///
  /// &gt; **Note:** This can only be specified when `contentType` is not set to `application/x-www-form-urlencoded` or `multipart/form-data`.
  final pulumi.Input<String?>? typeName;

  /// Creates a new [ApiOperationResponseRepresentation].
  /// [contentType] The Content Type of this representation, such as `application/json`.
  /// [examples] One or more `example` blocks as defined above.
  /// [formParameters] One or more `formParameter` block as defined above.
  /// [schemaId] The ID of an API Management Schema which represents this Response.
  /// [typeName] The Type Name defined by the Schema.
  const ApiOperationResponseRepresentation({
    required this.contentType,
    this.examples,
    this.formParameters,
    this.schemaId,
    this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'examples': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationResponseRepresentationExample>, List<Map<String, dynamic>>>(examples, (value) => pulumi.Input.encodeList<ApiOperationResponseRepresentationExample, Map<String, dynamic>>(value, (value) => value.toMap())),
      'formParameters': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationResponseRepresentationFormParameter>, List<Map<String, dynamic>>>(formParameters, (value) => pulumi.Input.encodeList<ApiOperationResponseRepresentationFormParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schemaId': ?schemaId,
      'typeName': ?typeName,
    };
  }

  factory ApiOperationResponseRepresentation.fromMap(Map<String, dynamic> map) {
    return ApiOperationResponseRepresentation(
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      examples: (() { final guardedValue = map['examples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiOperationResponseRepresentationExample>(guardedValue, (value) => ApiOperationResponseRepresentationExample.fromMap((value as Map).cast<String, dynamic>()))); })(),
      formParameters: (() { final guardedValue = map['formParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiOperationResponseRepresentationFormParameter>(guardedValue, (value) => ApiOperationResponseRepresentationFormParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeName: (() { final guardedValue = map['typeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
