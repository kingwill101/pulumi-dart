// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idrange_patch.dart';

/// SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy. Deprecated: use SupplementalGroupsStrategyOptions from policy API Group instead.
class SupplementalGroupsStrategyOptionsPatch {
  /// ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs.
  final List<IDRangePatch>? ranges;
  /// rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
  final String? rule;

  /// Creates a new [SupplementalGroupsStrategyOptionsPatch].
  /// [ranges] ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs.
  /// [rule] rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
  SupplementalGroupsStrategyOptionsPatch({
    this.ranges,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ranges': ?ranges == null ? null : pulumi.Input.encodeList<IDRangePatch, Map<String, dynamic>>(ranges!, (value) => value.toMap()),
      'rule': ?rule,
    };
  }

  factory SupplementalGroupsStrategyOptionsPatch.fromMap(Map<String, dynamic> map) {
    return SupplementalGroupsStrategyOptionsPatch(
      ranges: map['ranges'] == null ? null : pulumi.Input.decodeList<IDRangePatch>(map['ranges'], (value) => IDRangePatch.fromMap((value as Map).cast<String, dynamic>())),
      rule: map['rule'] == null ? null : map['rule'] as String,
    );
  }
}

