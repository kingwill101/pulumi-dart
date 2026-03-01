// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_cost_management_view_dataset_aggregation.dart';
import 'subscription_cost_management_view_dataset_grouping.dart';
import 'subscription_cost_management_view_dataset_sorting.dart';

class SubscriptionCostManagementViewDataset {
  /// One or more `aggregation` blocks as defined above.
  final List<SubscriptionCostManagementViewDatasetAggregation> aggregations;
  /// The granularity of rows in the report. Possible values are `Daily` and `Monthly`.
  final String granularity;
  /// One or more `grouping` blocks as defined below.
  final List<SubscriptionCostManagementViewDatasetGrouping>? groupings;
  /// One or more `sorting` blocks as defined below, containing the order by expression to be used in the report
  final List<SubscriptionCostManagementViewDatasetSorting>? sortings;

  /// Creates a new [SubscriptionCostManagementViewDataset].
  /// [aggregations] One or more `aggregation` blocks as defined above.
  /// [granularity] The granularity of rows in the report. Possible values are `Daily` and `Monthly`.
  /// [groupings] One or more `grouping` blocks as defined below.
  /// [sortings] One or more `sorting` blocks as defined below, containing the order by expression to be used in the report
  SubscriptionCostManagementViewDataset({
    required this.aggregations,
    required this.granularity,
    this.groupings,
    this.sortings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregations': pulumi.Input.encodeList<SubscriptionCostManagementViewDatasetAggregation, Map<String, dynamic>>(aggregations, (value) => value.toMap()),
      'granularity': granularity,
      'groupings': ?groupings == null ? null : pulumi.Input.encodeList<SubscriptionCostManagementViewDatasetGrouping, Map<String, dynamic>>(groupings!, (value) => value.toMap()),
      'sortings': ?sortings == null ? null : pulumi.Input.encodeList<SubscriptionCostManagementViewDatasetSorting, Map<String, dynamic>>(sortings!, (value) => value.toMap()),
    };
  }

  factory SubscriptionCostManagementViewDataset.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementViewDataset(
      aggregations: pulumi.Input.decodeList<SubscriptionCostManagementViewDatasetAggregation>(map['aggregations'], (value) => SubscriptionCostManagementViewDatasetAggregation.fromMap((value as Map).cast<String, dynamic>())),
      granularity: map['granularity'] as String,
      groupings: map['groupings'] == null ? null : pulumi.Input.decodeList<SubscriptionCostManagementViewDatasetGrouping>(map['groupings'], (value) => SubscriptionCostManagementViewDatasetGrouping.fromMap((value as Map).cast<String, dynamic>())),
      sortings: map['sortings'] == null ? null : pulumi.Input.decodeList<SubscriptionCostManagementViewDatasetSorting>(map['sortings'], (value) => SubscriptionCostManagementViewDatasetSorting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

