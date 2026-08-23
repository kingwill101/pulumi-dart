// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_subscription_filter_dimension.dart';
import 'get_budget_subscription_filter_not.dart';
import 'get_budget_subscription_filter_tag.dart';

class GetBudgetSubscriptionFilter {
  /// A `dimension` block as defined above.
  final pulumi.Input<List<GetBudgetSubscriptionFilterDimension>> dimensions;
  /// A `not` block as defined below.
  final pulumi.Input<List<GetBudgetSubscriptionFilterNot>> nots;
  /// A `tag` block as defined below.
  final pulumi.Input<List<GetBudgetSubscriptionFilterTag>> tags;

  /// Creates a new [GetBudgetSubscriptionFilter].
  /// [dimensions] A `dimension` block as defined above.
  /// [nots] A `not` block as defined below.
  /// [tags] A `tag` block as defined below.
  const GetBudgetSubscriptionFilter({
    required this.dimensions,
    required this.nots,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': pulumi.Input.mapInputValue<List<GetBudgetSubscriptionFilterDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetBudgetSubscriptionFilterDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nots': pulumi.Input.mapInputValue<List<GetBudgetSubscriptionFilterNot>, List<Map<String, dynamic>>>(nots, (value) => pulumi.Input.encodeList<GetBudgetSubscriptionFilterNot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': pulumi.Input.mapInputValue<List<GetBudgetSubscriptionFilterTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetBudgetSubscriptionFilterTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBudgetSubscriptionFilter.fromMap(Map<String, dynamic> map) {
    return GetBudgetSubscriptionFilter(
      dimensions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBudgetSubscriptionFilterDimension>(map['dimensions']!, (value) => GetBudgetSubscriptionFilterDimension.fromMap((value as Map).cast<String, dynamic>()))),
      nots: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBudgetSubscriptionFilterNot>(map['nots']!, (value) => GetBudgetSubscriptionFilterNot.fromMap((value as Map).cast<String, dynamic>()))),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBudgetSubscriptionFilterTag>(map['tags']!, (value) => GetBudgetSubscriptionFilterTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
