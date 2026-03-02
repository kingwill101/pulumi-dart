// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_response_header.dart';
import 'api_operation_response_representation.dart';

class ApiOperationResponse {
  /// A description of the HTTP Response, which may include HTML tags.
  final pulumi.Input<String>? description;
  /// One or more `header` blocks as defined above.
  final pulumi.Input<List<ApiOperationResponseHeader>>? headers;
  /// One or more `representation` blocks as defined above.
  final pulumi.Input<List<ApiOperationResponseRepresentation>>? representations;
  /// The HTTP Status Code.
  final pulumi.Input<int> statusCode;

  /// Creates a new [ApiOperationResponse].
  /// [description] A description of the HTTP Response, which may include HTML tags.
  /// [headers] One or more `header` blocks as defined above.
  /// [representations] One or more `representation` blocks as defined above.
  /// [statusCode] The HTTP Status Code.
  ApiOperationResponse({
    this.description,
    this.headers,
    this.representations,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationResponseHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ApiOperationResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'representations': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationResponseRepresentation>, List<Map<String, dynamic>>>(representations, (value) => pulumi.Input.encodeList<ApiOperationResponseRepresentation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCode': statusCode,
    };
  }

  factory ApiOperationResponse.fromMap(Map<String, dynamic> map) {
    return ApiOperationResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<ApiOperationResponseHeader>(map['headers']!, (value) => ApiOperationResponseHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      representations: map['representations'] == null ? null : (pulumi.Input.decodeList<ApiOperationResponseRepresentation>(map['representations']!, (value) => ApiOperationResponseRepresentation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statusCode: (map['statusCode'] as int).input(),
    );
  }
}

