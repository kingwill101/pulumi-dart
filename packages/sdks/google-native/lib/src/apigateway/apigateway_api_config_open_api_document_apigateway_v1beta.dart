// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_api_config_file_apigateway_v1beta.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocumentApigatewayV1beta {
  /// The OpenAPI Specification document file.
  final pulumi.Input<ApigatewayApiConfigFileApigatewayV1beta>? document;

  /// Creates a new [ApigatewayApiConfigOpenApiDocumentApigatewayV1beta].
  /// [document] The OpenAPI Specification document file.
  ApigatewayApiConfigOpenApiDocumentApigatewayV1beta({
    this.document,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'document': ?pulumi.Input.mapOptionalInputValue<ApigatewayApiConfigFileApigatewayV1beta, Map<String, dynamic>>(document, (value) => value.toMap()),
    };
  }

  factory ApigatewayApiConfigOpenApiDocumentApigatewayV1beta.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigOpenApiDocumentApigatewayV1beta(
      document: (() { final guardedValue = map['document']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApigatewayApiConfigFileApigatewayV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

