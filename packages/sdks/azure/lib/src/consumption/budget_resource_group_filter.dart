// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_resource_group_filter_dimension.dart';
import 'budget_resource_group_filter_tag.dart';

class BudgetResourceGroupFilter {
  /// One or more `dimension` blocks as defined below to filter the budget on.
  final List<BudgetResourceGroupFilterDimension>? dimensions;
  /// One or more `tag` blocks as defined below to filter the budget on.
  final List<BudgetResourceGroupFilterTag>? tags;

  /// Creates a new [BudgetResourceGroupFilter].
  /// [dimensions] One or more `dimension` blocks as defined below to filter the budget on.
  /// [tags] One or more `tag` blocks as defined below to filter the budget on.
  BudgetResourceGroupFilter({
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<BudgetResourceGroupFilterDimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<BudgetResourceGroupFilterTag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory BudgetResourceGroupFilter.fromMap(Map<String, dynamic> map) {
    return BudgetResourceGroupFilter(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<BudgetResourceGroupFilterDimension>(map['dimensions'], (value) => BudgetResourceGroupFilterDimension.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<BudgetResourceGroupFilterTag>(map['tags'], (value) => BudgetResourceGroupFilterTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

