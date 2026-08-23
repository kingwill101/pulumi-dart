// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VectorDatabaseConfig {
  /// The default vector quantization method applied to new collections.
  final pulumi.Input<String>? defaultQuantization;
  /// Whether Weaviate's auto-schema feature is enabled.
  final pulumi.Input<bool>? enableAutoSchema;
  /// The Weaviate engine version used by the vector database.
  final pulumi.Input<String>? weaviateVersion;

  /// Creates a new [VectorDatabaseConfig].
  /// [defaultQuantization] The default vector quantization method applied to new collections.
  /// [enableAutoSchema] Whether Weaviate's auto-schema feature is enabled.
  /// [weaviateVersion] The Weaviate engine version used by the vector database.
  const VectorDatabaseConfig({
    this.defaultQuantization,
    this.enableAutoSchema,
    this.weaviateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultQuantization': ?defaultQuantization,
      'enableAutoSchema': ?enableAutoSchema,
      'weaviateVersion': ?weaviateVersion,
    };
  }

  factory VectorDatabaseConfig.fromMap(Map<String, dynamic> map) {
    return VectorDatabaseConfig(
      defaultQuantization: (() { final guardedValue = map['defaultQuantization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAutoSchema: (() { final guardedValue = map['enableAutoSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      weaviateVersion: (() { final guardedValue = map['weaviateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
