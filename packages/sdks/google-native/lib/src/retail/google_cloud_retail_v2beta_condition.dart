// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_condition_query_term.dart';
import 'google_cloud_retail_v2beta_condition_time_range.dart';

/// Metadata that is used to define a condition that triggers an action. A valid condition must specify at least one of 'query_terms' or 'products_filter'. If multiple fields are specified, the condition is met if all the fields are satisfied e.g. if a set of query terms and product_filter are set, then only items matching the product_filter for requests with a query matching the query terms wil get boosted.
class GoogleCloudRetailV2betaCondition {
  /// Range of time(s) specifying when Condition is active. Condition true if any time range matches.
  final pulumi.Input<List<GoogleCloudRetailV2betaConditionTimeRange>>? activeTimeRange;
  /// Used to support browse uses cases. A list (up to 10 entries) of categories or departments. The format should be the same as UserEvent.page_categories;
  final pulumi.Input<List<String>>? pageCategories;
  /// A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If many query terms are specified, the condition is matched if any of the terms is a match (i.e. using the OR operator).
  final pulumi.Input<List<GoogleCloudRetailV2betaConditionQueryTerm>>? queryTerms;

  /// Creates a new [GoogleCloudRetailV2betaCondition].
  /// [activeTimeRange] Range of time(s) specifying when Condition is active. Condition true if any time range matches.
  /// [pageCategories] Used to support browse uses cases. A list (up to 10 entries) of categories or departments. The format should be the same as UserEvent.page_categories;
  /// [queryTerms] A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If many query terms are specified, the condition is matched if any of the terms is a match (i.e. using the OR operator).
  GoogleCloudRetailV2betaCondition({
    this.activeTimeRange,
    this.pageCategories,
    this.queryTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeTimeRange': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRetailV2betaConditionTimeRange>, List<Map<String, dynamic>>>(activeTimeRange, (value) => pulumi.Input.encodeList<GoogleCloudRetailV2betaConditionTimeRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pageCategories': ?pageCategories,
      'queryTerms': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRetailV2betaConditionQueryTerm>, List<Map<String, dynamic>>>(queryTerms, (value) => pulumi.Input.encodeList<GoogleCloudRetailV2betaConditionQueryTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudRetailV2betaCondition.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaCondition(
      activeTimeRange: map['activeTimeRange'] == null ? null : (pulumi.Input.decodeList<GoogleCloudRetailV2betaConditionTimeRange>(map['activeTimeRange']!, (value) => GoogleCloudRetailV2betaConditionTimeRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pageCategories: map['pageCategories'] == null ? null : ((map['pageCategories']! as List).cast<String>()).input(),
      queryTerms: map['queryTerms'] == null ? null : (pulumi.Input.decodeList<GoogleCloudRetailV2betaConditionQueryTerm>(map['queryTerms']!, (value) => GoogleCloudRetailV2betaConditionQueryTerm.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

