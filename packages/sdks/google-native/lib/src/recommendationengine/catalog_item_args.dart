// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recommendationengine_v1beta1_catalog_item_category_hierarchy.dart';
import 'google_cloud_recommendationengine_v1beta1_feature_map.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item.dart';

/// {@template pulumi_recommendationengine_v1beta1_catalog_item_args_doc}
/// The set of arguments for CatalogItem.
/// {@endtemplate}
/// {@macro pulumi_recommendationengine_v1beta1_catalog_item_args_doc}
class CatalogItemArgs {
  final pulumi.Input<String> catalogId;
  /// Catalog item categories. This field is repeated for supporting one catalog item belonging to several parallel category hierarchies. For example, if a shoes product belongs to both ["Shoes & Accessories" -&gt; "Shoes"] and ["Sports & Fitness" -&gt; "Athletic Clothing" -&gt; "Shoes"], it could be represented as: "categoryHierarchies": [ { "categories": ["Shoes & Accessories", "Shoes"]}, { "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] } ]
  final pulumi.Input<List<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>> categoryHierarchies;
  /// Optional. Catalog item description. UTF-8 encoded string with a length limit of 5 KiB.
  final pulumi.Input<String>? description;
  /// Catalog item identifier. UTF-8 encoded string with a length limit of 128 bytes. This id must be unique among all catalog items within the same catalog. It should also be used when logging user events in order for the user events to be joined with the Catalog.
  final pulumi.Input<String> id;
  /// Optional. Highly encouraged. Extra catalog item attributes to be included in the recommendation model. For example, for retail products, this could include the store name, vendor, style, color, etc. These are very strong signals for recommendation model, thus we highly recommend providing the item attributes here.
  final pulumi.Input<GoogleCloudRecommendationengineV1beta1FeatureMap>? itemAttributes;
  /// Optional. Variant group identifier for prediction results. UTF-8 encoded string with a length limit of 128 bytes. This field must be enabled before it can be used. [Learn more](/recommendations-ai/docs/catalog#item-group-id).
  final pulumi.Input<String>? itemGroupId;
  /// Optional. Deprecated. The model automatically detects the text language. Your catalog can include text in different languages, but duplicating catalog items to provide text in multiple languages can result in degraded model performance.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// Optional. Metadata specific to retail products.
  final pulumi.Input<GoogleCloudRecommendationengineV1beta1ProductCatalogItem>? productMetadata;
  final pulumi.Input<String>? project;
  /// Optional. Filtering tags associated with the catalog item. Each tag should be a UTF-8 encoded string with a length limit of 1 KiB. This tag can be used for filtering recommendation results by passing the tag as part of the predict request filter.
  final pulumi.Input<List<String>>? tags;
  /// Catalog item title. UTF-8 encoded string with a length limit of 1 KiB.
  final pulumi.Input<String> title;

  /// Creates a new [CatalogItemArgs].
  /// [catalogId] Required.
  /// [categoryHierarchies] Catalog item categories. This field is repeated for supporting one catalog item belonging to several parallel category hierarchies. For example, if a shoes product belongs to both ["Shoes & Accessories" -&gt; "Shoes"] and ["Sports & Fitness" -&gt; "Athletic Clothing" -&gt; "Shoes"], it could be represented as: "categoryHierarchies": [ { "categories": ["Shoes & Accessories", "Shoes"]}, { "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] } ]
  /// [description] Optional. Catalog item description. UTF-8 encoded string with a length limit of 5 KiB.
  /// [id] Catalog item identifier. UTF-8 encoded string with a length limit of 128 bytes. This id must be unique among all catalog items within the same catalog. It should also be used when logging user events in order for the user events to be joined with the Catalog.
  /// [itemAttributes] Optional. Highly encouraged. Extra catalog item attributes to be included in the recommendation model. For example, for retail products, this could include the store name, vendor, style, color, etc. These are very strong signals for recommendation model, thus we highly recommend providing the item attributes here.
  /// [itemGroupId] Optional. Variant group identifier for prediction results. UTF-8 encoded string with a length limit of 128 bytes. This field must be enabled before it can be used. [Learn more](/recommendations-ai/docs/catalog#item-group-id).
  /// [languageCode] Optional. Deprecated. The model automatically detects the text language. Your catalog can include text in different languages, but duplicating catalog items to provide text in multiple languages can result in degraded model performance.
  /// [location] Optional.
  /// [productMetadata] Optional. Metadata specific to retail products.
  /// [project] Optional.
  /// [tags] Optional. Filtering tags associated with the catalog item. Each tag should be a UTF-8 encoded string with a length limit of 1 KiB. This tag can be used for filtering recommendation results by passing the tag as part of the predict request filter.
  /// [title] Catalog item title. UTF-8 encoded string with a length limit of 1 KiB.
  CatalogItemArgs({
    required this.catalogId,
    required this.categoryHierarchies,
    this.description,
    required this.id,
    this.itemAttributes,
    this.itemGroupId,
    this.languageCode,
    this.location,
    this.productMetadata,
    this.project,
    this.tags,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'categoryHierarchies': pulumi.Input.mapInputValue<List<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>, List<Map<String, dynamic>>>(categoryHierarchies, (value) => pulumi.Input.encodeList<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'id': id,
      'itemAttributes': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecommendationengineV1beta1FeatureMap, Map<String, dynamic>>(itemAttributes, (value) => value.toMap()),
      'itemGroupId': ?itemGroupId,
      'languageCode': ?languageCode,
      'location': ?location,
      'productMetadata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecommendationengineV1beta1ProductCatalogItem, Map<String, dynamic>>(productMetadata, (value) => value.toMap()),
      'project': ?project,
      'tags': ?tags,
      'title': title,
    };
  }

  factory CatalogItemArgs.fromMap(Map<String, dynamic> map) {
    return CatalogItemArgs(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      categoryHierarchies: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>(map['categoryHierarchies']!, (value) => GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      itemAttributes: (() { final guardedValue = map['itemAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRecommendationengineV1beta1FeatureMap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      itemGroupId: (() { final guardedValue = map['itemGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productMetadata: (() { final guardedValue = map['productMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRecommendationengineV1beta1ProductCatalogItem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

