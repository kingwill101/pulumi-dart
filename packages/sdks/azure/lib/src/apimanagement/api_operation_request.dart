// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_request_header.dart';
import 'api_operation_request_query_parameter.dart';
import 'api_operation_request_representation.dart';

class ApiOperationRequest {
  /// A description of the HTTP Request, which may include HTML tags.
  final String? description;
  /// One or more `header` blocks as defined above.
  final List<ApiOperationRequestHeader>? headers;
  /// One or more `query_parameter` blocks as defined above.
  final List<ApiOperationRequestQueryParameter>? queryParameters;
  /// One or more `representation` blocks as defined below.
  final List<ApiOperationRequestRepresentation>? representations;

  /// Creates a new [ApiOperationRequest].
  /// [description] A description of the HTTP Request, which may include HTML tags.
  /// [headers] One or more `header` blocks as defined above.
  /// [queryParameters] One or more `query_parameter` blocks as defined above.
  /// [representations] One or more `representation` blocks as defined below.
  ApiOperationRequest({
    this.description,
    this.headers,
    this.queryParameters,
    this.representations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'headers': ?headers == null ? null : pulumi.Input.encodeList<ApiOperationRequestHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'queryParameters': ?queryParameters == null ? null : pulumi.Input.encodeList<ApiOperationRequestQueryParameter, Map<String, dynamic>>(queryParameters!, (value) => value.toMap()),
      'representations': ?representations == null ? null : pulumi.Input.encodeList<ApiOperationRequestRepresentation, Map<String, dynamic>>(representations!, (value) => value.toMap()),
    };
  }

  factory ApiOperationRequest.fromMap(Map<String, dynamic> map) {
    return ApiOperationRequest(
      description: map['description'] == null ? null : map['description'] as String,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<ApiOperationRequestHeader>(map['headers'], (value) => ApiOperationRequestHeader.fromMap((value as Map).cast<String, dynamic>())),
      queryParameters: map['queryParameters'] == null ? null : pulumi.Input.decodeList<ApiOperationRequestQueryParameter>(map['queryParameters'], (value) => ApiOperationRequestQueryParameter.fromMap((value as Map).cast<String, dynamic>())),
      representations: map['representations'] == null ? null : pulumi.Input.decodeList<ApiOperationRequestRepresentation>(map['representations'], (value) => ApiOperationRequestRepresentation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

