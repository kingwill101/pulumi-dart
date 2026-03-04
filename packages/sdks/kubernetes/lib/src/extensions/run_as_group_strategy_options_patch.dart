// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idrange_patch.dart';

/// RunAsGroupStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use RunAsGroupStrategyOptions from policy API Group instead.
class RunAsGroupStrategyOptionsPatch {
  /// ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.
  final pulumi.Input<List<IDRangePatch>>? ranges;

  /// rule is the strategy that will dictate the allowable RunAsGroup values that may be set.
  final pulumi.Input<String>? rule;

  /// Creates a new [RunAsGroupStrategyOptionsPatch].
  /// [ranges] ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.
  /// [rule] rule is the strategy that will dictate the allowable RunAsGroup values that may be set.
  RunAsGroupStrategyOptionsPatch({this.ranges, this.rule});

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

  factory RunAsGroupStrategyOptionsPatch.fromMap(Map<String, dynamic> map) {
    return RunAsGroupStrategyOptionsPatch(
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
