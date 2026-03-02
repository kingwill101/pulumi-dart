// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_management_group_filter_dimension.dart';
import 'budget_management_group_filter_tag.dart';

class BudgetManagementGroupFilter {
  /// One or more `dimension` blocks as defined below to filter the budget on.
  final pulumi.Input<List<BudgetManagementGroupFilterDimension>>? dimensions;
  /// One or more `tag` blocks as defined below to filter the budget on.
  final pulumi.Input<List<BudgetManagementGroupFilterTag>>? tags;

  /// Creates a new [BudgetManagementGroupFilter].
  /// [dimensions] One or more `dimension` blocks as defined below to filter the budget on.
  /// [tags] One or more `tag` blocks as defined below to filter the budget on.
  BudgetManagementGroupFilter({
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<BudgetManagementGroupFilterDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<BudgetManagementGroupFilterDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<BudgetManagementGroupFilterTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<BudgetManagementGroupFilterTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BudgetManagementGroupFilter.fromMap(Map<String, dynamic> map) {
    return BudgetManagementGroupFilter(
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<BudgetManagementGroupFilterDimension>(map['dimensions']!, (value) => BudgetManagementGroupFilterDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<BudgetManagementGroupFilterTag>(map['tags']!, (value) => BudgetManagementGroupFilterTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

