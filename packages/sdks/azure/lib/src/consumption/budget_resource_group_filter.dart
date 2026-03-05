// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_resource_group_filter_dimension.dart';
import 'budget_resource_group_filter_tag.dart';

class BudgetResourceGroupFilter {
  /// One or more `dimension` blocks as defined below to filter the budget on.
  final pulumi.Input<List<BudgetResourceGroupFilterDimension>>? dimensions;
  /// One or more `tag` blocks as defined below to filter the budget on.
  final pulumi.Input<List<BudgetResourceGroupFilterTag>>? tags;

  /// Creates a new [BudgetResourceGroupFilter].
  /// [dimensions] One or more `dimension` blocks as defined below to filter the budget on.
  /// [tags] One or more `tag` blocks as defined below to filter the budget on.
  BudgetResourceGroupFilter({
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<BudgetResourceGroupFilterDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<BudgetResourceGroupFilterDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<BudgetResourceGroupFilterTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<BudgetResourceGroupFilterTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BudgetResourceGroupFilter.fromMap(Map<String, dynamic> map) {
    return BudgetResourceGroupFilter(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetResourceGroupFilterDimension>(guardedValue, (value) => BudgetResourceGroupFilterDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetResourceGroupFilterTag>(guardedValue, (value) => BudgetResourceGroupFilterTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

