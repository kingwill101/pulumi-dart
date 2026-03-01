// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idrange_patch.dart';

/// RunAsUserStrategyOptions defines the strategy type and any options used to create the strategy.
class RunAsUserStrategyOptionsPatch {
  /// ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.
  final List<IDRangePatch>? ranges;
  /// rule is the strategy that will dictate the allowable RunAsUser values that may be set.
  final String? rule;

  /// Creates a new [RunAsUserStrategyOptionsPatch].
  /// [ranges] ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.
  /// [rule] rule is the strategy that will dictate the allowable RunAsUser values that may be set.
  RunAsUserStrategyOptionsPatch({
    this.ranges,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ranges': ?ranges == null ? null : pulumi.Input.encodeList<IDRangePatch, Map<String, dynamic>>(ranges!, (value) => value.toMap()),
      'rule': ?rule,
    };
  }

  factory RunAsUserStrategyOptionsPatch.fromMap(Map<String, dynamic> map) {
    return RunAsUserStrategyOptionsPatch(
      ranges: map['ranges'] == null ? null : pulumi.Input.decodeList<IDRangePatch>(map['ranges'], (value) => IDRangePatch.fromMap((value as Map).cast<String, dynamic>())),
      rule: map['rule'] == null ? null : map['rule'] as String,
    );
  }
}

