// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_api_config_file_response.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocumentResponse {
  /// The OpenAPI Specification document file.
  final ApigatewayApiConfigFileResponse document;

  /// Creates a new [ApigatewayApiConfigOpenApiDocumentResponse].
  /// [document] The OpenAPI Specification document file.
  ApigatewayApiConfigOpenApiDocumentResponse({
    required this.document,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'document': document.toMap(),
    };
  }

  factory ApigatewayApiConfigOpenApiDocumentResponse.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigOpenApiDocumentResponse(
      document: ApigatewayApiConfigFileResponse.fromMap((map['document'] as Map).cast<String, dynamic>()),
    );
  }
}

