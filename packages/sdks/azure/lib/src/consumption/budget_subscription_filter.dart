// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_subscription_filter_dimension.dart';
import 'budget_subscription_filter_tag.dart';

class BudgetSubscriptionFilter {
  /// One or more `dimension` blocks as defined below to filter the budget on.
  final pulumi.Input<List<BudgetSubscriptionFilterDimension>>? dimensions;
  /// One or more `tag` blocks as defined below to filter the budget on.
  final pulumi.Input<List<BudgetSubscriptionFilterTag>>? tags;

  /// Creates a new [BudgetSubscriptionFilter].
  /// [dimensions] One or more `dimension` blocks as defined below to filter the budget on.
  /// [tags] One or more `tag` blocks as defined below to filter the budget on.
  BudgetSubscriptionFilter({
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<BudgetSubscriptionFilterDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<BudgetSubscriptionFilterDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<BudgetSubscriptionFilterTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<BudgetSubscriptionFilterTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BudgetSubscriptionFilter.fromMap(Map<String, dynamic> map) {
    return BudgetSubscriptionFilter(
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<BudgetSubscriptionFilterDimension>(map['dimensions']!, (value) => BudgetSubscriptionFilterDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<BudgetSubscriptionFilterTag>(map['tags']!, (value) => BudgetSubscriptionFilterTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

