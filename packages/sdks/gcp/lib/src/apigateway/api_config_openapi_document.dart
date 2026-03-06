// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_openapi_document_document.dart';

class ApiConfigOpenapiDocument {
  /// The OpenAPI Specification document file.
  /// Structure is documented below.
  final pulumi.Input<ApiConfigOpenapiDocumentDocument> document;

  /// Creates a new [ApiConfigOpenapiDocument].
  /// [document] The OpenAPI Specification document file.
  const ApiConfigOpenapiDocument({
    required this.document,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'document': pulumi.Input.mapInputValue<ApiConfigOpenapiDocumentDocument, Map<String, dynamic>>(document, (value) => value.toMap()),
    };
  }

  factory ApiConfigOpenapiDocument.fromMap(Map<String, dynamic> map) {
    return ApiConfigOpenapiDocument(
      document: pulumi.Input.fromValue(ApiConfigOpenapiDocumentDocument.fromMap((map['document']! as Map).cast<String, dynamic>())),
    );
  }
}

