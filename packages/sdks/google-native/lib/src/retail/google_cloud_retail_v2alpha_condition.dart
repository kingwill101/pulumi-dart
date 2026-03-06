// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_condition_query_term.dart';
import 'google_cloud_retail_v2alpha_condition_time_range.dart';

/// Metadata that is used to define a condition that triggers an action. A valid condition must specify at least one of 'query_terms' or 'products_filter'. If multiple fields are specified, the condition is met if all the fields are satisfied e.g. if a set of query terms and product_filter are set, then only items matching the product_filter for requests with a query matching the query terms wil get boosted.
class GoogleCloudRetailV2alphaCondition {
  /// Range of time(s) specifying when Condition is active. Condition true if any time range matches.
  final pulumi.Input<List<GoogleCloudRetailV2alphaConditionTimeRange>>? activeTimeRange;
  /// Used to support browse uses cases. A list (up to 10 entries) of categories or departments. The format should be the same as UserEvent.page_categories;
  final pulumi.Input<List<String>>? pageCategories;
  /// A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If many query terms are specified, the condition is matched if any of the terms is a match (i.e. using the OR operator).
  final pulumi.Input<List<GoogleCloudRetailV2alphaConditionQueryTerm>>? queryTerms;

  /// Creates a new [GoogleCloudRetailV2alphaCondition].
  /// [activeTimeRange] Range of time(s) specifying when Condition is active. Condition true if any time range matches.
  /// [pageCategories] Used to support browse uses cases. A list (up to 10 entries) of categories or departments. The format should be the same as UserEvent.page_categories;
  /// [queryTerms] A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If many query terms are specified, the condition is matched if any of the terms is a match (i.e. using the OR operator).
  const GoogleCloudRetailV2alphaCondition({
    this.activeTimeRange,
    this.pageCategories,
    this.queryTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeTimeRange': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRetailV2alphaConditionTimeRange>, List<Map<String, dynamic>>>(activeTimeRange, (value) => pulumi.Input.encodeList<GoogleCloudRetailV2alphaConditionTimeRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pageCategories': ?pageCategories,
      'queryTerms': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRetailV2alphaConditionQueryTerm>, List<Map<String, dynamic>>>(queryTerms, (value) => pulumi.Input.encodeList<GoogleCloudRetailV2alphaConditionQueryTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudRetailV2alphaCondition.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaCondition(
      activeTimeRange: (() { final guardedValue = map['activeTimeRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRetailV2alphaConditionTimeRange>(guardedValue, (value) => GoogleCloudRetailV2alphaConditionTimeRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pageCategories: (() { final guardedValue = map['pageCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      queryTerms: (() { final guardedValue = map['queryTerms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRetailV2alphaConditionQueryTerm>(guardedValue, (value) => GoogleCloudRetailV2alphaConditionQueryTerm.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

