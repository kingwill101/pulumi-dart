// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_api_config_file_response.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocumentResponse {
  /// The OpenAPI Specification document file.
  final pulumi.Input<ApigatewayApiConfigFileResponse> document;

  /// Creates a new [ApigatewayApiConfigOpenApiDocumentResponse].
  /// [document] The OpenAPI Specification document file.
  ApigatewayApiConfigOpenApiDocumentResponse({required this.document});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'document':
          pulumi.Input.mapInputValue<
            ApigatewayApiConfigFileResponse,
            Map<String, dynamic>
          >(document, (value) => value.toMap()),
    };
  }

  factory ApigatewayApiConfigOpenApiDocumentResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApigatewayApiConfigOpenApiDocumentResponse(
      document: pulumi.Input.fromValue(
        ApigatewayApiConfigFileResponse.fromMap(
          (map['document']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
