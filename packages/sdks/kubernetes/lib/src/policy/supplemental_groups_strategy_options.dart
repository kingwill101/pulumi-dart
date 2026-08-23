// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idrange.dart';

/// SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy.
class SupplementalGroupsStrategyOptions {
  /// ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs.
  final pulumi.Input<List<IDRange>>? ranges;
  /// rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
  final pulumi.Input<String>? rule;

  /// Creates a new [SupplementalGroupsStrategyOptions].
  /// [ranges] ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs.
  /// [rule] rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
  const SupplementalGroupsStrategyOptions({
    this.ranges,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ranges': ?pulumi.Input.mapOptionalInputValue<List<IDRange>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<IDRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rule': ?rule,
    };
  }

  factory SupplementalGroupsStrategyOptions.fromMap(Map<String, dynamic> map) {
    return SupplementalGroupsStrategyOptions(
      ranges: (() { final guardedValue = map['ranges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IDRange>(guardedValue, (value) => IDRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
