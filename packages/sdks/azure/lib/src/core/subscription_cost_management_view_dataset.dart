// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_cost_management_view_dataset_aggregation.dart';
import 'subscription_cost_management_view_dataset_grouping.dart';
import 'subscription_cost_management_view_dataset_sorting.dart';

class SubscriptionCostManagementViewDataset {
  /// One or more `aggregation` blocks as defined above.
  final pulumi.Input<List<SubscriptionCostManagementViewDatasetAggregation>> aggregations;
  /// The granularity of rows in the report. Possible values are `Daily` and `Monthly`.
  final pulumi.Input<String> granularity;
  /// One or more `grouping` blocks as defined below.
  final pulumi.Input<List<SubscriptionCostManagementViewDatasetGrouping>>? groupings;
  /// One or more `sorting` blocks as defined below, containing the order by expression to be used in the report
  final pulumi.Input<List<SubscriptionCostManagementViewDatasetSorting>>? sortings;

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
      'aggregations': pulumi.Input.mapInputValue<List<SubscriptionCostManagementViewDatasetAggregation>, List<Map<String, dynamic>>>(aggregations, (value) => pulumi.Input.encodeList<SubscriptionCostManagementViewDatasetAggregation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'granularity': granularity,
      'groupings': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionCostManagementViewDatasetGrouping>, List<Map<String, dynamic>>>(groupings, (value) => pulumi.Input.encodeList<SubscriptionCostManagementViewDatasetGrouping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sortings': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionCostManagementViewDatasetSorting>, List<Map<String, dynamic>>>(sortings, (value) => pulumi.Input.encodeList<SubscriptionCostManagementViewDatasetSorting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubscriptionCostManagementViewDataset.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementViewDataset(
      aggregations: pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionCostManagementViewDatasetAggregation>(map['aggregations']!, (value) => SubscriptionCostManagementViewDatasetAggregation.fromMap((value as Map).cast<String, dynamic>()))),
      granularity: pulumi.Input.fromValue(map['granularity'] as String),
      groupings: (() { final guardedValue = map['groupings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionCostManagementViewDatasetGrouping>(guardedValue, (value) => SubscriptionCostManagementViewDatasetGrouping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sortings: (() { final guardedValue = map['sortings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionCostManagementViewDatasetSorting>(guardedValue, (value) => SubscriptionCostManagementViewDatasetSorting.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

