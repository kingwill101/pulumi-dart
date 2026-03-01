// ignore_for_file: unused_element, unnecessary_cast


/// * Rule Condition: - No Condition.query_terms provided is a global match. - 1 or more Condition.query_terms provided are combined with OR operator. * Action Input: The request query and filter that are applied to the retrieved products, in addition to any filters already provided with the SearchRequest. The AND operator is used to combine the query's existing filters with the filter rule(s). NOTE: May result in 0 results when filters conflict. * Action Result: Filters the returned objects to be ONLY those that passed the filter.
class GoogleCloudRetailV2alphaRuleFilterActionResponse {
  /// A filter to apply on the matching condition results. Supported features: * filter must be set. * Filter syntax is identical to SearchRequest.filter. For more information, see [Filter](/retail/docs/filter-and-order#filter). * To filter products with product ID "product_1" or "product_2", and color "Red" or "Blue": *(id: ANY("product_1", "product_2")) * *AND * *(colorFamilies: ANY("Red", "Blue")) *
  final String filter;

  /// Creates a new [GoogleCloudRetailV2alphaRuleFilterActionResponse].
  /// [filter] A filter to apply on the matching condition results. Supported features: * filter must be set. * Filter syntax is identical to SearchRequest.filter. For more information, see [Filter](/retail/docs/filter-and-order#filter). * To filter products with product ID "product_1" or "product_2", and color "Red" or "Blue": *(id: ANY("product_1", "product_2")) * *AND * *(colorFamilies: ANY("Red", "Blue")) *
  GoogleCloudRetailV2alphaRuleFilterActionResponse({
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
    };
  }

  factory GoogleCloudRetailV2alphaRuleFilterActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRuleFilterActionResponse(
      filter: map['filter'] as String,
    );
  }
}

