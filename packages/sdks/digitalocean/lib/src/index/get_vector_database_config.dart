// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVectorDatabaseConfig {
  /// The default vector quantization method applied to new collections.
  final pulumi.Input<String> defaultQuantization;
  /// Whether Weaviate's auto-schema feature is enabled.
  final pulumi.Input<bool> enableAutoSchema;
  /// The Weaviate engine version used by the vector database.
  final pulumi.Input<String> weaviateVersion;

  /// Creates a new [GetVectorDatabaseConfig].
  /// [defaultQuantization] The default vector quantization method applied to new collections.
  /// [enableAutoSchema] Whether Weaviate's auto-schema feature is enabled.
  /// [weaviateVersion] The Weaviate engine version used by the vector database.
  const GetVectorDatabaseConfig({
    required this.defaultQuantization,
    required this.enableAutoSchema,
    required this.weaviateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultQuantization': defaultQuantization,
      'enableAutoSchema': enableAutoSchema,
      'weaviateVersion': weaviateVersion,
    };
  }

  factory GetVectorDatabaseConfig.fromMap(Map<String, dynamic> map) {
    return GetVectorDatabaseConfig(
      defaultQuantization: pulumi.Input.fromValue(map['defaultQuantization'] as String),
      enableAutoSchema: pulumi.Input.fromValue(map['enableAutoSchema'] as bool),
      weaviateVersion: pulumi.Input.fromValue(map['weaviateVersion'] as String),
    );
  }
}
