// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayCategoriesListResultSubcategory {
  /// Indicate whether the category is in beta and subject to change.
  final pulumi.Input<bool> beta;
  /// Specify which account types can create policies for this category. `blocked` Blocks unconditionally for all accounts. `removalPending` Allows removal from policies but disables addition. `noBlock` Prevents blocking.
  /// Available values: "free", "premium", "blocked", "removalPending", "noBlock".
  final pulumi.Input<String> class_;
  /// Provide a short summary of domains in the category.
  final pulumi.Input<String> description;
  /// Identify this category. Only one category per ID.
  final pulumi.Input<int> id;
  /// Specify the category name.
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustGatewayCategoriesListResultSubcategory].
  /// [beta] Indicate whether the category is in beta and subject to change.
  /// [class_] Specify which account types can create policies for this category. `blocked` Blocks unconditionally for all accounts. `removalPending` Allows removal from policies but disables addition. `noBlock` Prevents blocking.
  /// [description] Provide a short summary of domains in the category.
  /// [id] Identify this category. Only one category per ID.
  /// [name] Specify the category name.
  const GetZeroTrustGatewayCategoriesListResultSubcategory({
    required this.beta,
    required this.class_,
    required this.description,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beta': beta,
      'class': class_,
      'description': description,
      'id': id,
      'name': name,
    };
  }

  factory GetZeroTrustGatewayCategoriesListResultSubcategory.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayCategoriesListResultSubcategory(
      beta: pulumi.Input.fromValue(map['beta'] as bool),
      class_: pulumi.Input.fromValue(map['class'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue((map['id'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
