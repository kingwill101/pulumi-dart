// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfig {
  /// Required. Unique ID identifying the memory schema.
  final pulumi.Input<String> id;
  /// Optional. The memory schema defined as an OpenAPI Schema Object JSON string.
  final pulumi.Input<String>? memorySchema;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfig].
  /// [id] Required. Unique ID identifying the memory schema.
  /// [memorySchema] Optional. The memory schema defined as an OpenAPI Schema Object JSON string.
  const AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfig({
    required this.id,
    this.memorySchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'memorySchema': ?memorySchema,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfig(
      id: pulumi.Input.fromValue(map['id'] as String),
      memorySchema: (() { final guardedValue = map['memorySchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
