// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_request_header.dart';
import 'api_operation_request_query_parameter.dart';
import 'api_operation_request_representation.dart';

class ApiOperationRequest {
  /// A description of the HTTP Request, which may include HTML tags.
  final pulumi.Input<String?>? description;
  /// One or more `header` blocks as defined above.
  final pulumi.Input<List<ApiOperationRequestHeader>?>? headers;
  /// One or more `queryParameter` blocks as defined above.
  final pulumi.Input<List<ApiOperationRequestQueryParameter>?>? queryParameters;
  /// One or more `representation` blocks as defined below.
  final pulumi.Input<List<ApiOperationRequestRepresentation>?>? representations;

  /// Creates a new [ApiOperationRequest].
  /// [description] A description of the HTTP Request, which may include HTML tags.
  /// [headers] One or more `header` blocks as defined above.
  /// [queryParameters] One or more `queryParameter` blocks as defined above.
  /// [representations] One or more `representation` blocks as defined below.
  const ApiOperationRequest({
    this.description,
    this.headers,
    this.queryParameters,
    this.representations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationRequestHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ApiOperationRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryParameters': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationRequestQueryParameter>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<ApiOperationRequestQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'representations': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationRequestRepresentation>, List<Map<String, dynamic>>>(representations, (value) => pulumi.Input.encodeList<ApiOperationRequestRepresentation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApiOperationRequest.fromMap(Map<String, dynamic> map) {
    return ApiOperationRequest(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiOperationRequestHeader>(guardedValue, (value) => ApiOperationRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiOperationRequestQueryParameter>(guardedValue, (value) => ApiOperationRequestQueryParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      representations: (() { final guardedValue = map['representations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiOperationRequestRepresentation>(guardedValue, (value) => ApiOperationRequestRepresentation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
