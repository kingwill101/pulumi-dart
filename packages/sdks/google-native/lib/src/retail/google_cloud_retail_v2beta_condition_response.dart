// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_condition_query_term_response.dart';
import 'google_cloud_retail_v2beta_condition_time_range_response.dart';

/// Metadata that is used to define a condition that triggers an action. A valid condition must specify at least one of 'query_terms' or 'products_filter'. If multiple fields are specified, the condition is met if all the fields are satisfied e.g. if a set of query terms and product_filter are set, then only items matching the product_filter for requests with a query matching the query terms wil get boosted.
class GoogleCloudRetailV2betaConditionResponse {
  /// Range of time(s) specifying when Condition is active. Condition true if any time range matches.
  final pulumi.Input<List<GoogleCloudRetailV2betaConditionTimeRangeResponse>> activeTimeRange;
  /// Used to support browse uses cases. A list (up to 10 entries) of categories or departments. The format should be the same as UserEvent.page_categories;
  final pulumi.Input<List<String>> pageCategories;
  /// A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If many query terms are specified, the condition is matched if any of the terms is a match (i.e. using the OR operator).
  final pulumi.Input<List<GoogleCloudRetailV2betaConditionQueryTermResponse>> queryTerms;

  /// Creates a new [GoogleCloudRetailV2betaConditionResponse].
  /// [activeTimeRange] Range of time(s) specifying when Condition is active. Condition true if any time range matches.
  /// [pageCategories] Used to support browse uses cases. A list (up to 10 entries) of categories or departments. The format should be the same as UserEvent.page_categories;
  /// [queryTerms] A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If many query terms are specified, the condition is matched if any of the terms is a match (i.e. using the OR operator).
  const GoogleCloudRetailV2betaConditionResponse({
    required this.activeTimeRange,
    required this.pageCategories,
    required this.queryTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeTimeRange': pulumi.Input.mapInputValue<List<GoogleCloudRetailV2betaConditionTimeRangeResponse>, List<Map<String, dynamic>>>(activeTimeRange, (value) => pulumi.Input.encodeList<GoogleCloudRetailV2betaConditionTimeRangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pageCategories': pageCategories,
      'queryTerms': pulumi.Input.mapInputValue<List<GoogleCloudRetailV2betaConditionQueryTermResponse>, List<Map<String, dynamic>>>(queryTerms, (value) => pulumi.Input.encodeList<GoogleCloudRetailV2betaConditionQueryTermResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudRetailV2betaConditionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaConditionResponse(
      activeTimeRange: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRetailV2betaConditionTimeRangeResponse>(map['activeTimeRange']!, (value) => GoogleCloudRetailV2betaConditionTimeRangeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      pageCategories: pulumi.Input.fromValue((map['pageCategories'] as List).cast<String>()),
      queryTerms: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRetailV2betaConditionQueryTermResponse>(map['queryTerms']!, (value) => GoogleCloudRetailV2betaConditionQueryTermResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

