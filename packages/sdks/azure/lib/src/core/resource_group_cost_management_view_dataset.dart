// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_cost_management_view_dataset_aggregation.dart';
import 'resource_group_cost_management_view_dataset_grouping.dart';
import 'resource_group_cost_management_view_dataset_sorting.dart';

class ResourceGroupCostManagementViewDataset {
  /// One or more `aggregation` blocks as defined above.
  final List<ResourceGroupCostManagementViewDatasetAggregation> aggregations;
  /// The granularity of rows in the report. Possible values are `Daily` and `Monthly`.
  final String granularity;
  /// One or more `grouping` blocks as defined below.
  final List<ResourceGroupCostManagementViewDatasetGrouping>? groupings;
  /// One or more `sorting` blocks as defined below, containing the order by expression to be used in the report
  final List<ResourceGroupCostManagementViewDatasetSorting>? sortings;

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
      'aggregations': pulumi.Input.encodeList<ResourceGroupCostManagementViewDatasetAggregation, Map<String, dynamic>>(aggregations, (value) => value.toMap()),
      'granularity': granularity,
      'groupings': ?groupings == null ? null : pulumi.Input.encodeList<ResourceGroupCostManagementViewDatasetGrouping, Map<String, dynamic>>(groupings!, (value) => value.toMap()),
      'sortings': ?sortings == null ? null : pulumi.Input.encodeList<ResourceGroupCostManagementViewDatasetSorting, Map<String, dynamic>>(sortings!, (value) => value.toMap()),
    };
  }

  factory ResourceGroupCostManagementViewDataset.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementViewDataset(
      aggregations: pulumi.Input.decodeList<ResourceGroupCostManagementViewDatasetAggregation>(map['aggregations'], (value) => ResourceGroupCostManagementViewDatasetAggregation.fromMap((value as Map).cast<String, dynamic>())),
      granularity: map['granularity'] as String,
      groupings: map['groupings'] == null ? null : pulumi.Input.decodeList<ResourceGroupCostManagementViewDatasetGrouping>(map['groupings'], (value) => ResourceGroupCostManagementViewDatasetGrouping.fromMap((value as Map).cast<String, dynamic>())),
      sortings: map['sortings'] == null ? null : pulumi.Input.decodeList<ResourceGroupCostManagementViewDatasetSorting>(map['sortings'], (value) => ResourceGroupCostManagementViewDatasetSorting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

