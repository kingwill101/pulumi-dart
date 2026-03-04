// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idrange_patch.dart';

/// SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy. Deprecated: use SupplementalGroupsStrategyOptions from policy API Group instead.
class SupplementalGroupsStrategyOptionsPatch {
  /// ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs.
  final pulumi.Input<List<IDRangePatch>>? ranges;

  /// rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
  final pulumi.Input<String>? rule;

  /// Creates a new [SupplementalGroupsStrategyOptionsPatch].
  /// [ranges] ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs.
  /// [rule] rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
  SupplementalGroupsStrategyOptionsPatch({this.ranges, this.rule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ranges':
          ?pulumi.Input.mapOptionalInputValue<
            List<IDRangePatch>,
            List<Map<String, dynamic>>
          >(
            ranges,
            (value) =>
                pulumi.Input.encodeList<IDRangePatch, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'rule': ?rule,
    };
  }

  factory SupplementalGroupsStrategyOptionsPatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return SupplementalGroupsStrategyOptionsPatch(
      ranges: (() {
        final guardedValue = map['ranges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IDRangePatch>(
            guardedValue,
            (value) =>
                IDRangePatch.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      rule: (() {
        final guardedValue = map['rule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
