// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldOperationsResultFeaturesSchemaInfoActiveSchema {
  final pulumi.Input<String> createdAt;
  /// UUID.
  final pulumi.Input<String> id;
  /// Schema file name.
  final pulumi.Input<String> name;

  /// Creates a new [GetApiShieldOperationsResultFeaturesSchemaInfoActiveSchema].
  /// [createdAt] Required.
  /// [id] UUID.
  /// [name] Schema file name.
  const GetApiShieldOperationsResultFeaturesSchemaInfoActiveSchema({
    required this.createdAt,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'name': name,
    };
  }

  factory GetApiShieldOperationsResultFeaturesSchemaInfoActiveSchema.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsResultFeaturesSchemaInfoActiveSchema(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
