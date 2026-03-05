import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_item_args.dart';
import 'google_cloud_recommendationengine_v1beta1_feature_map_response.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_response.dart';

/// Creates a catalog item.
/// Auto-naming is currently not supported for this resource.
class CatalogItem extends pulumi.CustomResource {
  late final pulumi.Output<String> catalogId;

  /// Catalog item categories. This field is repeated for supporting one catalog item belonging to several parallel category hierarchies. For example, if a shoes product belongs to both ["Shoes & Accessories" -&gt; "Shoes"] and ["Sports & Fitness" -&gt; "Athletic Clothing" -&gt; "Shoes"], it could be represented as: "categoryHierarchies": [ { "categories": ["Shoes & Accessories", "Shoes"]}, { "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] } ]
  late final pulumi.Output<List<Map<String, dynamic>>> categoryHierarchies;

  /// Optional. Catalog item description. UTF-8 encoded string with a length limit of 5 KiB.
  late final pulumi.Output<String> description;

  /// Optional. Highly encouraged. Extra catalog item attributes to be included in the recommendation model. For example, for retail products, this could include the store name, vendor, style, color, etc. These are very strong signals for recommendation model, thus we highly recommend providing the item attributes here.
  late final pulumi.Output<
    GoogleCloudRecommendationengineV1beta1FeatureMapResponse
  >
  itemAttributes;

  /// Optional. Variant group identifier for prediction results. UTF-8 encoded string with a length limit of 128 bytes. This field must be enabled before it can be used. [Learn more](/recommendations-ai/docs/catalog#item-group-id).
  late final pulumi.Output<String> itemGroupId;

  /// Optional. Deprecated. The model automatically detects the text language. Your catalog can include text in different languages, but duplicating catalog items to provide text in multiple languages can result in degraded model performance.
  late final pulumi.Output<String> languageCode;
  late final pulumi.Output<String> location;

  /// Optional. Metadata specific to retail products.
  late final pulumi.Output<
    GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse
  >
  productMetadata;
  late final pulumi.Output<String> project;

  /// Optional. Filtering tags associated with the catalog item. Each tag should be a UTF-8 encoded string with a length limit of 1 KiB. This tag can be used for filtering recommendation results by passing the tag as part of the predict request filter.
  late final pulumi.Output<List<String>> tags;

  /// Catalog item title. UTF-8 encoded string with a length limit of 1 KiB.
  late final pulumi.Output<String> title;

  /// Creates a new [CatalogItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CatalogItem]. {@macro pulumi_recommendationengine_v1beta1_catalog_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CatalogItem(
    String name, {
    CatalogItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:recommendationengine/v1beta1:CatalogItem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    catalogId = registerOutput<String>('catalogId');
    categoryHierarchies = registerOutput<List<Map<String, dynamic>>>(
      'categoryHierarchies',
    );
    description = registerOutput<String>('description');
    itemAttributes =
        registerOutput<
          GoogleCloudRecommendationengineV1beta1FeatureMapResponse
        >(
          'itemAttributes',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudRecommendationengineV1beta1FeatureMapResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    itemGroupId = registerOutput<String>('itemGroupId');
    languageCode = registerOutput<String>('languageCode');
    location = registerOutput<String>('location');
    productMetadata =
        registerOutput<
          GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse
        >(
          'productMetadata',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    project = registerOutput<String>('project');
    tags = registerOutput<List<String>>('tags');
    title = registerOutput<String>('title');
  }
}
