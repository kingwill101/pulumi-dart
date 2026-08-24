// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operation_schemas_learned.dart';
import 'get_api_shield_operation_schemas_uploaded.dart';

class GetApiShieldOperationSchemas {
  /// An OpenAPI operation object fragment containing schema information for an operation. May include parameter definitions, request body specifications, and a component schema extension.
  final pulumi.Input<GetApiShieldOperationSchemasLearned> learned;
  /// An OpenAPI operation object fragment containing schema information for an operation. May include parameter definitions, request body specifications, and a component schema extension.
  final pulumi.Input<GetApiShieldOperationSchemasUploaded> uploaded;

  /// Creates a new [GetApiShieldOperationSchemas].
  /// [learned] An OpenAPI operation object fragment containing schema information for an operation. May include parameter definitions, request body specifications, and a component schema extension.
  /// [uploaded] An OpenAPI operation object fragment containing schema information for an operation. May include parameter definitions, request body specifications, and a component schema extension.
  const GetApiShieldOperationSchemas({
    required this.learned,
    required this.uploaded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'learned': pulumi.Input.mapInputValue<GetApiShieldOperationSchemasLearned, Map<String, dynamic>>(learned, (value) => value.toMap()),
      'uploaded': pulumi.Input.mapInputValue<GetApiShieldOperationSchemasUploaded, Map<String, dynamic>>(uploaded, (value) => value.toMap()),
    };
  }

  factory GetApiShieldOperationSchemas.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationSchemas(
      learned: pulumi.Input.fromValue(GetApiShieldOperationSchemasLearned.fromMap((map['learned']! as Map).cast<String, dynamic>())),
      uploaded: pulumi.Input.fromValue(GetApiShieldOperationSchemasUploaded.fromMap((map['uploaded']! as Map).cast<String, dynamic>())),
    );
  }
}
