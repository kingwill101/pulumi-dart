// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_api_config_file_response_apigateway_v1beta.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta {
  /// The OpenAPI Specification document file.
  final pulumi.Input<ApigatewayApiConfigFileResponseApigatewayV1beta> document;

  /// Creates a new [ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta].
  /// [document] The OpenAPI Specification document file.
  ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta({
    required this.document,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'document': pulumi.Input.mapInputValue<ApigatewayApiConfigFileResponseApigatewayV1beta, Map<String, dynamic>>(document, (value) => value.toMap()),
    };
  }

  factory ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta(
      document: pulumi.Input.fromValue(ApigatewayApiConfigFileResponseApigatewayV1beta.fromMap((map['document']! as Map).cast<String, dynamic>())),
    );
  }
}

