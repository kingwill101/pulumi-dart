// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiShieldOperationFeaturesSchemaInfoActiveSchema {
  final pulumi.Input<String?>? createdAt;
  /// UUID.
  final pulumi.Input<String?>? id;
  /// Schema file name.
  final pulumi.Input<String?>? name;

  /// Creates a new [ApiShieldOperationFeaturesSchemaInfoActiveSchema].
  /// [createdAt] Optional.
  /// [id] UUID.
  /// [name] Schema file name.
  const ApiShieldOperationFeaturesSchemaInfoActiveSchema({
    this.createdAt,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'id': ?id,
      'name': ?name,
    };
  }

  factory ApiShieldOperationFeaturesSchemaInfoActiveSchema.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationFeaturesSchemaInfoActiveSchema(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
