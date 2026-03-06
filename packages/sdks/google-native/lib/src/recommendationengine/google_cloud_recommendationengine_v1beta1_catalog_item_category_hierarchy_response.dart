// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Category represents catalog item category hierarchy.
class GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchyResponse {
  /// Catalog item categories. Each category should be a UTF-8 encoded string with a length limit of 2 KiB. Note that the order in the list denotes the specificity (from least to most specific).
  final pulumi.Input<List<String>> categories;

  /// Creates a new [GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchyResponse].
  /// [categories] Catalog item categories. Each category should be a UTF-8 encoded string with a length limit of 2 KiB. Note that the order in the list denotes the specificity (from least to most specific).
  const GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchyResponse({
    required this.categories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': categories,
    };
  }

  factory GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchyResponse(
      categories: pulumi.Input.fromValue((map['categories'] as List).cast<String>()),
    );
  }
}

