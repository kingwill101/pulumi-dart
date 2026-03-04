// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idrange.dart';

/// RunAsGroupStrategyOptions defines the strategy type and any options used to create the strategy.
class RunAsGroupStrategyOptions {
  /// ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.
  final pulumi.Input<List<IDRange>>? ranges;

  /// rule is the strategy that will dictate the allowable RunAsGroup values that may be set.
  final pulumi.Input<String> rule;

  /// Creates a new [RunAsGroupStrategyOptions].
  /// [ranges] ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.
  /// [rule] rule is the strategy that will dictate the allowable RunAsGroup values that may be set.
  RunAsGroupStrategyOptions({this.ranges, required this.rule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ranges':
          ?pulumi.Input.mapOptionalInputValue<
            List<IDRange>,
            List<Map<String, dynamic>>
          >(
            ranges,
            (value) => pulumi.Input.encodeList<IDRange, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'rule': rule,
    };
  }

  factory RunAsGroupStrategyOptions.fromMap(Map<String, dynamic> map) {
    return RunAsGroupStrategyOptions(
      ranges: (() {
        final guardedValue = map['ranges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IDRange>(
            guardedValue,
            (value) => IDRange.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      rule: pulumi.Input.fromValue(map['rule'] as String),
    );
  }
}
