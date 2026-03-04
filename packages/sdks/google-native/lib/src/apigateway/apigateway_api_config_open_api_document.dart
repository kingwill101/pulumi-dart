// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_api_config_file.dart';

/// An OpenAPI Specification Document describing an API.
class ApigatewayApiConfigOpenApiDocument {
  /// The OpenAPI Specification document file.
  final pulumi.Input<ApigatewayApiConfigFile>? document;

  /// Creates a new [ApigatewayApiConfigOpenApiDocument].
  /// [document] The OpenAPI Specification document file.
  ApigatewayApiConfigOpenApiDocument({this.document});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'document':
          ?pulumi.Input.mapOptionalInputValue<
            ApigatewayApiConfigFile,
            Map<String, dynamic>
          >(document, (value) => value.toMap()),
    };
  }

  factory ApigatewayApiConfigOpenApiDocument.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigOpenApiDocument(
      document: (() {
        final guardedValue = map['document'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApigatewayApiConfigFile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
