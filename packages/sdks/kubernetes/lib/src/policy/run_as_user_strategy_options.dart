// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idrange.dart';

/// RunAsUserStrategyOptions defines the strategy type and any options used to create the strategy.
class RunAsUserStrategyOptions {
  /// ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.
  final List<IDRange>? ranges;
  /// rule is the strategy that will dictate the allowable RunAsUser values that may be set.
  final String rule;

  /// Creates a new [RunAsUserStrategyOptions].
  /// [ranges] ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.
  /// [rule] rule is the strategy that will dictate the allowable RunAsUser values that may be set.
  RunAsUserStrategyOptions({
    this.ranges,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ranges': ?ranges == null ? null : pulumi.Input.encodeList<IDRange, Map<String, dynamic>>(ranges!, (value) => value.toMap()),
      'rule': rule,
    };
  }

  factory RunAsUserStrategyOptions.fromMap(Map<String, dynamic> map) {
    return RunAsUserStrategyOptions(
      ranges: map['ranges'] == null ? null : pulumi.Input.decodeList<IDRange>(map['ranges'], (value) => IDRange.fromMap((value as Map).cast<String, dynamic>())),
      rule: map['rule'] as String,
    );
  }
}

