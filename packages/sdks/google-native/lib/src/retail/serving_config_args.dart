// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2_search_request_dynamic_facet_spec.dart';
import 'google_cloud_retail_v2_search_request_personalization_spec.dart';
import 'serving_config_diversity_type.dart';
import 'serving_config_solution_types_item.dart';

/// {@template pulumi_retail_v2_serving_config_args_doc}
/// The set of arguments for ServingConfig.
/// {@endtemplate}
/// {@macro pulumi_retail_v2_serving_config_args_doc}
class ServingConfigArgs {
  /// Condition boost specifications. If a product matches multiple conditions in the specifications, boost scores from these specifications are all applied and combined in a non-linear way. Maximum number of specifications is 100. Notice that if both ServingConfig.boost_control_ids and SearchRequest.boost_spec are set, the boost conditions from both places are evaluated. If a search request matches multiple boost conditions, the final boost score is equal to the sum of the boost scores from all matched boost conditions. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<String>>? boostControlIds;
  final pulumi.Input<String> catalogId;
  /// The human readable serving config display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<String> displayName;
  /// How much diversity to use in recommendation model results e.g. `medium-diversity` or `high-diversity`. Currently supported values: * `no-diversity` * `low-diversity` * `medium-diversity` * `high-diversity` * `auto-diversity` If not specified, we choose default based on recommendation model type. Default value: `no-diversity`. Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final pulumi.Input<String>? diversityLevel;
  /// What kind of diversity to use - data driven or rule based. If unset, the server behavior defaults to RULE_BASED_DIVERSITY.
  final pulumi.Input<ServingConfigDiversityType>? diversityType;
  /// Condition do not associate specifications. If multiple do not associate conditions match, all matching do not associate controls in the list will execute. - Order does not matter. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<String>>? doNotAssociateControlIds;
  /// The specification for dynamically generated facets. Notice that only textual facets can be dynamically generated. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<GoogleCloudRetailV2SearchRequestDynamicFacetSpec>? dynamicFacetSpec;
  /// Whether to add additional category filters on the `similar-items` model. If not specified, we enable it by default. Allowed values are: * `no-category-match`: No additional filtering of original results from the model and the customer's filters. * `relaxed-category-match`: Only keep results with categories that match at least one item categories in the PredictRequests's context item. * If customer also sends filters in the PredictRequest, then the results will satisfy both conditions (user given and category match). Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final pulumi.Input<String>? enableCategoryFilterLevel;
  /// Facet specifications for faceted search. If empty, no facets are returned. The ids refer to the ids of Control resources with only the Facet control set. These controls are assumed to be in the same Catalog as the ServingConfig. A maximum of 100 values are allowed. Otherwise, an INVALID_ARGUMENT error is returned. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<String>>? facetControlIds;
  /// Condition filter specifications. If a product matches multiple conditions in the specifications, filters from these specifications are all applied and combined via the AND operator. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<String>>? filterControlIds;
  /// Condition ignore specifications. If multiple ignore conditions match, all matching ignore controls in the list will execute. - Order does not matter. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<String>>? ignoreControlIds;
  final pulumi.Input<String>? location;
  /// The id of the model in the same Catalog to use at serving time. Currently only RecommendationModels are supported: https://cloud.google.com/retail/recommendations-ai/docs/create-models Can be changed but only to a compatible model (e.g. others-you-may-like CTR to others-you-may-like CVR). Required when solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final pulumi.Input<String>? modelId;
  /// Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/servingConfig/*`
  final pulumi.Input<String>? name;
  /// Condition oneway synonyms specifications. If multiple oneway synonyms conditions match, all matching oneway synonyms controls in the list will execute. Order of controls in the list will not matter. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<String>>? onewaySynonymsControlIds;
  /// The specification for personalization spec. Can only be set if solution_types is SOLUTION_TYPE_SEARCH. Notice that if both ServingConfig.personalization_spec and SearchRequest.personalization_spec are set. SearchRequest.personalization_spec will override ServingConfig.personalization_spec.
  final pulumi.Input<GoogleCloudRetailV2SearchRequestPersonalizationSpec>? personalizationSpec;
  /// How much price ranking we want in serving results. Price reranking causes product items with a similar recommendation probability to be ordered by price, with the highest-priced items first. This setting could result in a decrease in click-through and conversion rates. Allowed values are: * `no-price-reranking` * `low-price-reranking` * `medium-price-reranking` * `high-price-reranking` If not specified, we choose default based on model type. Default value: `no-price-reranking`. Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final pulumi.Input<String>? priceRerankingLevel;
  final pulumi.Input<String>? project;
  /// Condition redirect specifications. Only the first triggered redirect action is applied, even if multiple apply. Maximum number of specifications is 1000. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<String>>? redirectControlIds;
  /// Condition replacement specifications. - Applied according to the order in the list. - A previously replaced term can not be re-replaced. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<String>>? replacementControlIds;
  /// Required. The ID to use for the ServingConfig, which will become the final component of the ServingConfig's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  final pulumi.Input<String> servingConfigId;
  /// Immutable. Specifies the solution types that a serving config can be associated with. Currently we support setting only one type of solution.
  final pulumi.Input<List<ServingConfigSolutionTypesItem>> solutionTypes;
  /// Condition synonyms specifications. If multiple syonyms conditions match, all matching synonyms control in the list will execute. Order of controls in the list will not matter. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<String>>? twowaySynonymsControlIds;

  /// Creates a new [ServingConfigArgs].
  /// [boostControlIds] Condition boost specifications. If a product matches multiple conditions in the specifications, boost scores from these specifications are all applied and combined in a non-linear way. Maximum number of specifications is 100. Notice that if both ServingConfig.boost_control_ids and SearchRequest.boost_spec are set, the boost conditions from both places are evaluated. If a search request matches multiple boost conditions, the final boost score is equal to the sum of the boost scores from all matched boost conditions. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  /// [catalogId] Required.
  /// [displayName] The human readable serving config display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [diversityLevel] How much diversity to use in recommendation model results e.g. `medium-diversity` or `high-diversity`. Currently supported values: * `no-diversity` * `low-diversity` * `medium-diversity` * `high-diversity` * `auto-diversity` If not specified, we choose default based on recommendation model type. Default value: `no-diversity`. Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  /// [diversityType] What kind of diversity to use - data driven or rule based. If unset, the server behavior defaults to RULE_BASED_DIVERSITY.
  /// [doNotAssociateControlIds] Condition do not associate specifications. If multiple do not associate conditions match, all matching do not associate controls in the list will execute. - Order does not matter. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  /// [dynamicFacetSpec] The specification for dynamically generated facets. Notice that only textual facets can be dynamically generated. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  /// [enableCategoryFilterLevel] Whether to add additional category filters on the `similar-items` model. If not specified, we enable it by default. Allowed values are: * `no-category-match`: No additional filtering of original results from the model and the customer's filters. * `relaxed-category-match`: Only keep results with categories that match at least one item categories in the PredictRequests's context item. * If customer also sends filters in the PredictRequest, then the results will satisfy both conditions (user given and category match). Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  /// [facetControlIds] Facet specifications for faceted search. If empty, no facets are returned. The ids refer to the ids of Control resources with only the Facet control set. These controls are assumed to be in the same Catalog as the ServingConfig. A maximum of 100 values are allowed. Otherwise, an INVALID_ARGUMENT error is returned. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  /// [filterControlIds] Condition filter specifications. If a product matches multiple conditions in the specifications, filters from these specifications are all applied and combined via the AND operator. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  /// [ignoreControlIds] Condition ignore specifications. If multiple ignore conditions match, all matching ignore controls in the list will execute. - Order does not matter. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  /// [location] Optional.
  /// [modelId] The id of the model in the same Catalog to use at serving time. Currently only RecommendationModels are supported: https://cloud.google.com/retail/recommendations-ai/docs/create-models Can be changed but only to a compatible model (e.g. others-you-may-like CTR to others-you-may-like CVR). Required when solution_types is SOLUTION_TYPE_RECOMMENDATION.
  /// [name] Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/servingConfig/*`
  /// [onewaySynonymsControlIds] Condition oneway synonyms specifications. If multiple oneway synonyms conditions match, all matching oneway synonyms controls in the list will execute. Order of controls in the list will not matter. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  /// [personalizationSpec] The specification for personalization spec. Can only be set if solution_types is SOLUTION_TYPE_SEARCH. Notice that if both ServingConfig.personalization_spec and SearchRequest.personalization_spec are set. SearchRequest.personalization_spec will override ServingConfig.personalization_spec.
  /// [priceRerankingLevel] How much price ranking we want in serving results. Price reranking causes product items with a similar recommendation probability to be ordered by price, with the highest-priced items first. This setting could result in a decrease in click-through and conversion rates. Allowed values are: * `no-price-reranking` * `low-price-reranking` * `medium-price-reranking` * `high-price-reranking` If not specified, we choose default based on model type. Default value: `no-price-reranking`. Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  /// [project] Optional.
  /// [redirectControlIds] Condition redirect specifications. Only the first triggered redirect action is applied, even if multiple apply. Maximum number of specifications is 1000. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  /// [replacementControlIds] Condition replacement specifications. - Applied according to the order in the list. - A previously replaced term can not be re-replaced. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  /// [servingConfigId] Required. The ID to use for the ServingConfig, which will become the final component of the ServingConfig's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  /// [solutionTypes] Immutable. Specifies the solution types that a serving config can be associated with. Currently we support setting only one type of solution.
  /// [twowaySynonymsControlIds] Condition synonyms specifications. If multiple syonyms conditions match, all matching synonyms control in the list will execute. Order of controls in the list will not matter. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  ServingConfigArgs({
    this.boostControlIds,
    required this.catalogId,
    required this.displayName,
    this.diversityLevel,
    this.diversityType,
    this.doNotAssociateControlIds,
    this.dynamicFacetSpec,
    this.enableCategoryFilterLevel,
    this.facetControlIds,
    this.filterControlIds,
    this.ignoreControlIds,
    this.location,
    this.modelId,
    this.name,
    this.onewaySynonymsControlIds,
    this.personalizationSpec,
    this.priceRerankingLevel,
    this.project,
    this.redirectControlIds,
    this.replacementControlIds,
    required this.servingConfigId,
    required this.solutionTypes,
    this.twowaySynonymsControlIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostControlIds': ?boostControlIds,
      'catalogId': catalogId,
      'displayName': displayName,
      'diversityLevel': ?diversityLevel,
      'diversityType': ?pulumi.Input.mapOptionalInputValue<ServingConfigDiversityType, String>(diversityType, (value) => value.wireValue),
      'doNotAssociateControlIds': ?doNotAssociateControlIds,
      'dynamicFacetSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2SearchRequestDynamicFacetSpec, Map<String, dynamic>>(dynamicFacetSpec, (value) => value.toMap()),
      'enableCategoryFilterLevel': ?enableCategoryFilterLevel,
      'facetControlIds': ?facetControlIds,
      'filterControlIds': ?filterControlIds,
      'ignoreControlIds': ?ignoreControlIds,
      'location': ?location,
      'modelId': ?modelId,
      'name': ?name,
      'onewaySynonymsControlIds': ?onewaySynonymsControlIds,
      'personalizationSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2SearchRequestPersonalizationSpec, Map<String, dynamic>>(personalizationSpec, (value) => value.toMap()),
      'priceRerankingLevel': ?priceRerankingLevel,
      'project': ?project,
      'redirectControlIds': ?redirectControlIds,
      'replacementControlIds': ?replacementControlIds,
      'servingConfigId': servingConfigId,
      'solutionTypes': pulumi.Input.mapInputValue<List<ServingConfigSolutionTypesItem>, List<String>>(solutionTypes, (value) => pulumi.Input.encodeList<ServingConfigSolutionTypesItem, String>(value, (value) => value.wireValue)),
      'twowaySynonymsControlIds': ?twowaySynonymsControlIds,
    };
  }

  factory ServingConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServingConfigArgs(
      boostControlIds: (() { final guardedValue = map['boostControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      diversityLevel: (() { final guardedValue = map['diversityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diversityType: (() { final guardedValue = map['diversityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServingConfigDiversityType.fromValue(guardedValue as String)); })(),
      doNotAssociateControlIds: (() { final guardedValue = map['doNotAssociateControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dynamicFacetSpec: (() { final guardedValue = map['dynamicFacetSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2SearchRequestDynamicFacetSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableCategoryFilterLevel: (() { final guardedValue = map['enableCategoryFilterLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      facetControlIds: (() { final guardedValue = map['facetControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filterControlIds: (() { final guardedValue = map['filterControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ignoreControlIds: (() { final guardedValue = map['ignoreControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onewaySynonymsControlIds: (() { final guardedValue = map['onewaySynonymsControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      personalizationSpec: (() { final guardedValue = map['personalizationSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2SearchRequestPersonalizationSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priceRerankingLevel: (() { final guardedValue = map['priceRerankingLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectControlIds: (() { final guardedValue = map['redirectControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      replacementControlIds: (() { final guardedValue = map['replacementControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      servingConfigId: pulumi.Input.fromValue(map['servingConfigId'] as String),
      solutionTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<ServingConfigSolutionTypesItem>(map['solutionTypes']!, (value) => ServingConfigSolutionTypesItem.fromValue(value as String))),
      twowaySynonymsControlIds: (() { final guardedValue = map['twowaySynonymsControlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

