// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_resource_group_filter_dimension.dart';
import 'get_budget_resource_group_filter_not.dart';
import 'get_budget_resource_group_filter_tag.dart';

class GetBudgetResourceGroupFilter {
  /// A `dimension` block as defined below.
  final pulumi.Input<List<GetBudgetResourceGroupFilterDimension>> dimensions;
  /// A `not` block as defined below.
  final pulumi.Input<List<GetBudgetResourceGroupFilterNot>> nots;
  /// A `tag` block as defined below.
  final pulumi.Input<List<GetBudgetResourceGroupFilterTag>> tags;

  /// Creates a new [GetBudgetResourceGroupFilter].
  /// [dimensions] A `dimension` block as defined below.
  /// [nots] A `not` block as defined below.
  /// [tags] A `tag` block as defined below.
  GetBudgetResourceGroupFilter({
    required this.dimensions,
    required this.nots,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': pulumi.Input.mapInputValue<List<GetBudgetResourceGroupFilterDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetBudgetResourceGroupFilterDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nots': pulumi.Input.mapInputValue<List<GetBudgetResourceGroupFilterNot>, List<Map<String, dynamic>>>(nots, (value) => pulumi.Input.encodeList<GetBudgetResourceGroupFilterNot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': pulumi.Input.mapInputValue<List<GetBudgetResourceGroupFilterTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetBudgetResourceGroupFilterTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBudgetResourceGroupFilter.fromMap(Map<String, dynamic> map) {
    return GetBudgetResourceGroupFilter(
      dimensions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBudgetResourceGroupFilterDimension>(map['dimensions']!, (value) => GetBudgetResourceGroupFilterDimension.fromMap((value as Map).cast<String, dynamic>()))),
      nots: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBudgetResourceGroupFilterNot>(map['nots']!, (value) => GetBudgetResourceGroupFilterNot.fromMap((value as Map).cast<String, dynamic>()))),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBudgetResourceGroupFilterTag>(map['tags']!, (value) => GetBudgetResourceGroupFilterTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

