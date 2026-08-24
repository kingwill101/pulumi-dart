// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldOperationFeaturesSchemaInfoActiveSchema {
  final pulumi.Input<String> createdAt;
  /// UUID.
  final pulumi.Input<String> id;
  /// True if schema is Cloudflare-provided.
  final pulumi.Input<bool> isLearned;
  /// Schema file name.
  final pulumi.Input<String> name;

  /// Creates a new [GetApiShieldOperationFeaturesSchemaInfoActiveSchema].
  /// [createdAt] Required.
  /// [id] UUID.
  /// [isLearned] True if schema is Cloudflare-provided.
  /// [name] Schema file name.
  const GetApiShieldOperationFeaturesSchemaInfoActiveSchema({
    required this.createdAt,
    required this.id,
    required this.isLearned,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'isLearned': isLearned,
      'name': name,
    };
  }

  factory GetApiShieldOperationFeaturesSchemaInfoActiveSchema.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationFeaturesSchemaInfoActiveSchema(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isLearned: pulumi.Input.fromValue(map['isLearned'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
