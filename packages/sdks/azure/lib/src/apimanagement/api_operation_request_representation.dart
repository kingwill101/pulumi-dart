// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_request_representation_example.dart';
import 'api_operation_request_representation_form_parameter.dart';

class ApiOperationRequestRepresentation {
  /// The Content Type of this representation, such as `application/json`.
  final pulumi.Input<String> contentType;
  /// One or more `example` blocks as defined above.
  final pulumi.Input<List<ApiOperationRequestRepresentationExample>>? examples;
  /// One or more `formParameter` block as defined above.
  ///
  /// &gt; **Note:** This is Required when `contentType` is set to `application/x-www-form-urlencoded` or `multipart/form-data`.
  final pulumi.Input<List<ApiOperationRequestRepresentationFormParameter>>? formParameters;
  /// The ID of an API Management Schema which represents this Response.
  ///
  /// &gt; **Note:** This can only be specified when `contentType` is not set to `application/x-www-form-urlencoded` or `multipart/form-data`.
  final pulumi.Input<String>? schemaId;
  /// The Type Name defined by the Schema.
  ///
  /// &gt; **Note:** This can only be specified when `contentType` is not set to `application/x-www-form-urlencoded` or `multipart/form-data`.
  final pulumi.Input<String>? typeName;

  /// Creates a new [ApiOperationRequestRepresentation].
  /// [contentType] The Content Type of this representation, such as `application/json`.
  /// [examples] One or more `example` blocks as defined above.
  /// [formParameters] One or more `formParameter` block as defined above.
  /// [schemaId] The ID of an API Management Schema which represents this Response.
  /// [typeName] The Type Name defined by the Schema.
  const ApiOperationRequestRepresentation({
    required this.contentType,
    this.examples,
    this.formParameters,
    this.schemaId,
    this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'examples': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationRequestRepresentationExample>, List<Map<String, dynamic>>>(examples, (value) => pulumi.Input.encodeList<ApiOperationRequestRepresentationExample, Map<String, dynamic>>(value, (value) => value.toMap())),
      'formParameters': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationRequestRepresentationFormParameter>, List<Map<String, dynamic>>>(formParameters, (value) => pulumi.Input.encodeList<ApiOperationRequestRepresentationFormParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schemaId': ?schemaId,
      'typeName': ?typeName,
    };
  }

  factory ApiOperationRequestRepresentation.fromMap(Map<String, dynamic> map) {
    return ApiOperationRequestRepresentation(
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      examples: (() { final guardedValue = map['examples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiOperationRequestRepresentationExample>(guardedValue, (value) => ApiOperationRequestRepresentationExample.fromMap((value as Map).cast<String, dynamic>()))); })(),
      formParameters: (() { final guardedValue = map['formParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiOperationRequestRepresentationFormParameter>(guardedValue, (value) => ApiOperationRequestRepresentationFormParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeName: (() { final guardedValue = map['typeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
