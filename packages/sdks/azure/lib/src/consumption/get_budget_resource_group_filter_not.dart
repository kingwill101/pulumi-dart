// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_resource_group_filter_not_dimension.dart';
import 'get_budget_resource_group_filter_not_tag.dart';

class GetBudgetResourceGroupFilterNot {
  /// A `dimension` block as defined below.
  final pulumi.Input<List<GetBudgetResourceGroupFilterNotDimension>> dimensions;
  /// A `tag` block as defined below.
  final pulumi.Input<List<GetBudgetResourceGroupFilterNotTag>> tags;

  /// Creates a new [GetBudgetResourceGroupFilterNot].
  /// [dimensions] A `dimension` block as defined below.
  /// [tags] A `tag` block as defined below.
  const GetBudgetResourceGroupFilterNot({
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': pulumi.Input.mapInputValue<List<GetBudgetResourceGroupFilterNotDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetBudgetResourceGroupFilterNotDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': pulumi.Input.mapInputValue<List<GetBudgetResourceGroupFilterNotTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetBudgetResourceGroupFilterNotTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBudgetResourceGroupFilterNot.fromMap(Map<String, dynamic> map) {
    return GetBudgetResourceGroupFilterNot(
      dimensions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBudgetResourceGroupFilterNotDimension>(map['dimensions']!, (value) => GetBudgetResourceGroupFilterNotDimension.fromMap((value as Map).cast<String, dynamic>()))),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBudgetResourceGroupFilterNotTag>(map['tags']!, (value) => GetBudgetResourceGroupFilterNotTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

