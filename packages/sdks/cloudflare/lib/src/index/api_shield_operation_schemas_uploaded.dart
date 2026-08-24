// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiShieldOperationSchemasUploaded {
  /// OpenAPI parameter objects describing path, query, header, or cookie parameters.
  final pulumi.Input<List<Map<String, String>>?>? parameters;
  /// OpenAPI request body object describing the expected request payload.
  final pulumi.Input<Map<String, String>?>? requestBody;

  /// Creates a new [ApiShieldOperationSchemasUploaded].
  /// [parameters] OpenAPI parameter objects describing path, query, header, or cookie parameters.
  /// [requestBody] OpenAPI request body object describing the expected request payload.
  const ApiShieldOperationSchemasUploaded({
    this.parameters,
    this.requestBody,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'requestBody': ?requestBody,
    };
  }

  factory ApiShieldOperationSchemasUploaded.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationSchemasUploaded(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>())); })(),
      requestBody: (() { final guardedValue = map['requestBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
