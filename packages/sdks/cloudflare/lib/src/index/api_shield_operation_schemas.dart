// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_operation_schemas_learned.dart';
import 'api_shield_operation_schemas_uploaded.dart';

class ApiShieldOperationSchemas {
  /// An OpenAPI operation object fragment containing schema information for an operation. May include parameter definitions, request body specifications, and a component schema extension.
  final pulumi.Input<ApiShieldOperationSchemasLearned?>? learned;
  /// An OpenAPI operation object fragment containing schema information for an operation. May include parameter definitions, request body specifications, and a component schema extension.
  final pulumi.Input<ApiShieldOperationSchemasUploaded?>? uploaded;

  /// Creates a new [ApiShieldOperationSchemas].
  /// [learned] An OpenAPI operation object fragment containing schema information for an operation. May include parameter definitions, request body specifications, and a component schema extension.
  /// [uploaded] An OpenAPI operation object fragment containing schema information for an operation. May include parameter definitions, request body specifications, and a component schema extension.
  const ApiShieldOperationSchemas({
    this.learned,
    this.uploaded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'learned': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationSchemasLearned, Map<String, dynamic>>(learned, (value) => value.toMap()),
      'uploaded': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationSchemasUploaded, Map<String, dynamic>>(uploaded, (value) => value.toMap()),
    };
  }

  factory ApiShieldOperationSchemas.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationSchemas(
      learned: (() { final guardedValue = map['learned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationSchemasLearned.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uploaded: (() { final guardedValue = map['uploaded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationSchemasUploaded.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
