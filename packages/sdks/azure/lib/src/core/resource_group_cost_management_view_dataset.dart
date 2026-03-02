// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_cost_management_view_dataset_aggregation.dart';
import 'resource_group_cost_management_view_dataset_grouping.dart';
import 'resource_group_cost_management_view_dataset_sorting.dart';

class ResourceGroupCostManagementViewDataset {
  /// One or more `aggregation` blocks as defined above.
  final pulumi.Input<List<ResourceGroupCostManagementViewDatasetAggregation>> aggregations;
  /// The granularity of rows in the report. Possible values are `Daily` and `Monthly`.
  final pulumi.Input<String> granularity;
  /// One or more `grouping` blocks as defined below.
  final pulumi.Input<List<ResourceGroupCostManagementViewDatasetGrouping>>? groupings;
  /// One or more `sorting` blocks as defined below, containing the order by expression to be used in the report
  final pulumi.Input<List<ResourceGroupCostManagementViewDatasetSorting>>? sortings;

  /// Creates a new [ResourceGroupCostManagementViewDataset].
  /// [aggregations] One or more `aggregation` blocks as defined above.
  /// [granularity] The granularity of rows in the report. Possible values are `Daily` and `Monthly`.
  /// [groupings] One or more `grouping` blocks as defined below.
  /// [sortings] One or more `sorting` blocks as defined below, containing the order by expression to be used in the report
  ResourceGroupCostManagementViewDataset({
    required this.aggregations,
    required this.granularity,
    this.groupings,
    this.sortings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregations': pulumi.Input.mapInputValue<List<ResourceGroupCostManagementViewDatasetAggregation>, List<Map<String, dynamic>>>(aggregations, (value) => pulumi.Input.encodeList<ResourceGroupCostManagementViewDatasetAggregation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'granularity': granularity,
      'groupings': ?pulumi.Input.mapOptionalInputValue<List<ResourceGroupCostManagementViewDatasetGrouping>, List<Map<String, dynamic>>>(groupings, (value) => pulumi.Input.encodeList<ResourceGroupCostManagementViewDatasetGrouping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sortings': ?pulumi.Input.mapOptionalInputValue<List<ResourceGroupCostManagementViewDatasetSorting>, List<Map<String, dynamic>>>(sortings, (value) => pulumi.Input.encodeList<ResourceGroupCostManagementViewDatasetSorting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceGroupCostManagementViewDataset.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementViewDataset(
      aggregations: (pulumi.Input.decodeList<ResourceGroupCostManagementViewDatasetAggregation>(map['aggregations'], (value) => ResourceGroupCostManagementViewDatasetAggregation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      granularity: (map['granularity'] as String).input(),
      groupings: map['groupings'] == null ? null : (pulumi.Input.decodeList<ResourceGroupCostManagementViewDatasetGrouping>(map['groupings'], (value) => ResourceGroupCostManagementViewDatasetGrouping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sortings: map['sortings'] == null ? null : (pulumi.Input.decodeList<ResourceGroupCostManagementViewDatasetSorting>(map['sortings'], (value) => ResourceGroupCostManagementViewDatasetSorting.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

