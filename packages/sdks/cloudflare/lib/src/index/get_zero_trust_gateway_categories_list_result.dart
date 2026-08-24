// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_categories_list_result_subcategory.dart';

class GetZeroTrustGatewayCategoriesListResult {
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
  /// Provide all subcategories for this category.
  final pulumi.Input<List<GetZeroTrustGatewayCategoriesListResultSubcategory>> subcategories;

  /// Creates a new [GetZeroTrustGatewayCategoriesListResult].
  /// [beta] Indicate whether the category is in beta and subject to change.
  /// [class_] Specify which account types can create policies for this category. `blocked` Blocks unconditionally for all accounts. `removalPending` Allows removal from policies but disables addition. `noBlock` Prevents blocking.
  /// [description] Provide a short summary of domains in the category.
  /// [id] Identify this category. Only one category per ID.
  /// [name] Specify the category name.
  /// [subcategories] Provide all subcategories for this category.
  const GetZeroTrustGatewayCategoriesListResult({
    required this.beta,
    required this.class_,
    required this.description,
    required this.id,
    required this.name,
    required this.subcategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beta': beta,
      'class': class_,
      'description': description,
      'id': id,
      'name': name,
      'subcategories': pulumi.Input.mapInputValue<List<GetZeroTrustGatewayCategoriesListResultSubcategory>, List<Map<String, dynamic>>>(subcategories, (value) => pulumi.Input.encodeList<GetZeroTrustGatewayCategoriesListResultSubcategory, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustGatewayCategoriesListResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayCategoriesListResult(
      beta: pulumi.Input.fromValue(map['beta'] as bool),
      class_: pulumi.Input.fromValue(map['class'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue((map['id'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
      subcategories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustGatewayCategoriesListResultSubcategory>(map['subcategories']!, (value) => GetZeroTrustGatewayCategoriesListResultSubcategory.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
