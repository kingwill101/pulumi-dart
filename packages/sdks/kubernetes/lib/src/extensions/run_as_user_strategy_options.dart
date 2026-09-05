// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idrange.dart';

/// RunAsUserStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use RunAsUserStrategyOptions from policy API Group instead.
class RunAsUserStrategyOptions {
  /// ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.
  final pulumi.Input<List<IDRange>?>? ranges;
  /// rule is the strategy that will dictate the allowable RunAsUser values that may be set.
  final pulumi.Input<String> rule;

  /// Creates a new [RunAsUserStrategyOptions].
  /// [ranges] ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.
  /// [rule] rule is the strategy that will dictate the allowable RunAsUser values that may be set.
  const RunAsUserStrategyOptions({
    this.ranges,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ranges': ?pulumi.Input.mapOptionalInputValue<List<IDRange>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<IDRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rule': rule,
    };
  }

  factory RunAsUserStrategyOptions.fromMap(Map<String, dynamic> map) {
    return RunAsUserStrategyOptions(
      ranges: (() { final guardedValue = map['ranges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IDRange>(guardedValue, (value) => IDRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rule: pulumi.Input.fromValue(map['rule'] as String),
    );
  }
}
