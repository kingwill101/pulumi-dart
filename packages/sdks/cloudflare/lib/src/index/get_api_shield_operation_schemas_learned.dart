// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldOperationSchemasLearned {
  /// OpenAPI parameter objects describing path, query, header, or cookie parameters.
  final pulumi.Input<List<Map<String, String>>> parameters;
  /// OpenAPI request body object describing the expected request payload.
  final pulumi.Input<Map<String, String>> requestBody;

  /// Creates a new [GetApiShieldOperationSchemasLearned].
  /// [parameters] OpenAPI parameter objects describing path, query, header, or cookie parameters.
  /// [requestBody] OpenAPI request body object describing the expected request payload.
  const GetApiShieldOperationSchemasLearned({
    required this.parameters,
    required this.requestBody,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': parameters,
      'requestBody': requestBody,
    };
  }

  factory GetApiShieldOperationSchemasLearned.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationSchemasLearned(
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(map['parameters']!, (value) => (value as Map).cast<String, String>())),
      requestBody: pulumi.Input.fromValue((map['requestBody'] as Map).cast<String, String>()),
    );
  }
}
