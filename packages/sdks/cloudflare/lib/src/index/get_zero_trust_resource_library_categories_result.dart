// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustResourceLibraryCategoriesResult {
  /// Returns the category creation time.
  final pulumi.Input<String> createdAt;
  /// Returns the category description.
  final pulumi.Input<String> description;
  /// Returns the category ID.
  final pulumi.Input<int> id;
  /// Returns the category name.
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustResourceLibraryCategoriesResult].
  /// [createdAt] Returns the category creation time.
  /// [description] Returns the category description.
  /// [id] Returns the category ID.
  /// [name] Returns the category name.
  const GetZeroTrustResourceLibraryCategoriesResult({
    required this.createdAt,
    required this.description,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'name': name,
    };
  }

  factory GetZeroTrustResourceLibraryCategoriesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryCategoriesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue((map['id'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
