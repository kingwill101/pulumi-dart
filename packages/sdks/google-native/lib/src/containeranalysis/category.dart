// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The category to which the update belongs.
class Category {
  /// The identifier of the category.
  final pulumi.Input<String>? categoryId;
  /// The localized name of the category.
  final pulumi.Input<String>? name;

  /// Creates a new [Category].
  /// [categoryId] The identifier of the category.
  /// [name] The localized name of the category.
  const Category({
    this.categoryId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': ?categoryId,
      'name': ?name,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      categoryId: (() { final guardedValue = map['categoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

