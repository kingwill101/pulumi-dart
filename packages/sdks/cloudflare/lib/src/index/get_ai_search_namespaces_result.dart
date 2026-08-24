// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchNamespacesResult {
  final pulumi.Input<String> createdAt;
  /// Optional description for the namespace. Max 256 characters.
  final pulumi.Input<String> description;
  final pulumi.Input<String> name;

  /// Creates a new [GetAiSearchNamespacesResult].
  /// [createdAt] Required.
  /// [description] Optional description for the namespace. Max 256 characters.
  /// [name] Required.
  const GetAiSearchNamespacesResult({
    required this.createdAt,
    required this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'name': name,
    };
  }

  factory GetAiSearchNamespacesResult.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespacesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
